.class public Lcom/android/music/player/activity/MusicPlayer;
.super Landroid/app/Activity;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/android/music/common/util/OnLowBatteryListener;
.implements Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;


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
        Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;
    }
.end annotation


# instance fields
.field protected final ALBUM_ART_DECODED:I

.field protected final ALBUM_ART_VISUALIZATION:I

.field protected final END_SKIP_BACKWARD:I

.field protected final END_SKIP_FORWARD:I

.field protected EQBottomImage:[I

.field protected EQBottomImageView:[I

.field protected EQTopImage:[I

.field protected EQTopImageView:[I

.field private final FLING_IGNORE_DISABLE:I

.field private final FLING_IMAGE_TO_LEFT:I

.field private final FLING_IMAGE_TO_RIGHT:I

.field protected final GET_ALBUM_ART:I

.field protected final HIDE_ADDITIONAL_BAR:I

.field protected final HIDE_VOLUME_BAR:I

.field IDX_ALARM_TONE:I

.field IDX_CALL_RINGTONE:I

.field IDX_INDIVIDUAL_RINGTONE:I

.field protected final LONG_PRESS_TIME:J

.field protected final MENU_ADD_TO_PLAYLIST:I

.field protected final MENU_ADD_TO_QUICK_LIST:I

.field protected final MENU_DETAILS:I

.field protected final MENU_GO_TO_DISC_PLUS:I

.field protected final MENU_GO_TO_QUICK_LIST:I

.field protected final MENU_SETTING:I

.field protected final MENU_SET_AS:I

.field protected final MENU_SHARE_TRACK_VIA:I

.field protected final MENU_SHOP:I

.field protected final MENU_TRANSFER_TO_HEADSET:I

.field protected final MENU_TRANSFER_TO_PHONE:I

.field protected final MESSAGE_DELAY:J

.field protected final PLAYLIST_TYPE:[I

.field protected final PLAY_PLAYLIST:I

.field protected final PLAY_SEARCH:I

.field protected final PROCESSING_POPUP_DIALOG:I

.field protected final QUIT:I

.field protected final SETAS_OPTION_POPUP_DIALOG:I

.field protected final SETAS_OPTION_POPUP_DIALOG_WITH_MYFAVES:I

.field protected final SET_PLAYED_TIME:I

.field protected final SHOW_LYRIC_PANEL:I

.field protected final STARTUP_DELAY:J

.field protected final START_SKIP_BACKWARD:I

.field protected final START_SKIP_FORWARD:I

.field protected final TAG:Ljava/lang/String;

.field protected final UPDATE_PLAYER:I

.field protected final UPDATE_STATUS:I

.field protected additionalPanelFromAlbumArt:Z

.field protected bCalledByList:Z

.field private bPressedFF:Z

.field private bPressedREW:Z

.field protected drmManager:Lcom/android/music/common/manager/MusicDrmManager;

.field googleSearchMessageBox:Landroid/app/AlertDialog;

.field protected intentAction:Ljava/lang/String;

.field protected intentIsFromList:Z

.field protected intentPlayListName:Ljava/lang/String;

.field protected intentPlayListType:I

.field protected intentStreamMedia:Ljava/lang/String;

.field protected intentStreamMimeType:Ljava/lang/String;

.field protected isActivityExit:Z

.field protected isFirstTime:Z

.field protected isShownAdditionalBar:Z

.field private isShownVolumeBar:Z

.field protected mAPIWarningDone:Z

.field private mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

.field protected mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

.field private mAlbumId:I

.field protected mAnimationScreen:Landroid/widget/FrameLayout;

.field protected mAudioManager:Landroid/media/AudioManager;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mButtonFF:Landroid/widget/ImageView;

.field protected mButtonIconList:Lcom/android/music/common/util/IconTextButton;

.field protected mButtonPlay:Landroid/widget/ImageView;

.field protected mButtonRepeat:Landroid/widget/ImageView;

.field protected mButtonRew:Landroid/widget/ImageView;

.field protected mButtonShuffle:Landroid/widget/ImageView;

.field protected mButtonSrs:Landroid/widget/ImageView;

.field protected mButtonVolume:Landroid/widget/ImageView;

.field protected mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field protected mCoverflowView:Landroid/widget/ImageView;

.field protected mCurrentAudioId:I

.field protected mCursor:Landroid/database/Cursor;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field protected mDetailView:Landroid/widget/LinearLayout;

.field protected mDetailViewImage:Landroid/widget/ImageView;

.field protected mDetailViewImageReflect:Landroid/widget/ImageView;

.field protected mDurationView:Landroid/widget/TextView;

.field private mFlingHandler:Landroid/os/Handler;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureSweepListener:Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

.field mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

.field final mHandler:Landroid/os/Handler;

.field private mHideBubble:Ljava/lang/Runnable;

.field protected mIndexOfVisualization:I

.field protected mIsLiveStreamMode:Z

.field protected mIsVolumeBubbleRunable:Z

.field protected mIterator_Id:I

.field protected mLaunchMode:I

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field protected mMediaDuration:J

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mMenu:Landroid/view/Menu;

.field protected mMpListFilter:Lcom/android/music/common/data/MpListFilter;

.field protected mMusicDB:Lcom/android/music/common/data/MusicDB;

.field protected mMusicPlayerInitDone:Z

.field protected mMusicPlayerView:Landroid/widget/LinearLayout;

.field protected mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

.field protected mNewAudioId:I

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

.field protected mProgressBar:Landroid/widget/SeekBar;

.field private mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

.field protected final mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

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

.field protected mSubCursor:Landroid/database/Cursor;

.field protected mTitleInfoButton:Landroid/view/View;

.field private mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

.field protected mTvAlbum:Landroid/widget/TextView;

.field protected mTvArtist:Landroid/widget/TextView;

.field protected mTvTitle:Landroid/widget/TextView;

.field protected mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field protected mViewAlbumImage:Landroid/widget/ImageView;

.field protected mViewAlbumImageTemp:Landroid/widget/ImageView;

.field protected mViewChanging:Z

.field protected mViewProgressBar:Landroid/view/ViewGroup;

.field protected mVisualizationType:I

.field protected mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field protected mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field protected mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

.field protected menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field protected menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field musicPlayerToast:Landroid/widget/Toast;

.field private priorBitmap:Landroid/graphics/Bitmap;

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

.field shareMusicMessageBox:Landroid/app/AlertDialog;

.field protected showTimeElapsed:Z

.field protected skipCount:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 423
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    const-class v0, Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 147
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 148
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 171
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->isFirstTime:Z

    .line 172
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIsFromList:Z

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    .line 186
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    .line 187
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    .line 190
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 191
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    .line 192
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mNewAudioId:I

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    .line 195
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 214
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->QUIT:I

    .line 215
    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->UPDATE_STATUS:I

    .line 216
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->UPDATE_PLAYER:I

    .line 218
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->PLAY_PLAYLIST:I

    .line 219
    iput v6, p0, Lcom/android/music/player/activity/MusicPlayer;->PLAY_SEARCH:I

    .line 221
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->GET_ALBUM_ART:I

    .line 222
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->ALBUM_ART_DECODED:I

    .line 223
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->ALBUM_ART_VISUALIZATION:I

    .line 224
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->START_SKIP_FORWARD:I

    .line 225
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->END_SKIP_FORWARD:I

    .line 226
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->START_SKIP_BACKWARD:I

    .line 227
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->END_SKIP_BACKWARD:I

    .line 228
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->SET_PLAYED_TIME:I

    .line 229
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->HIDE_VOLUME_BAR:I

    .line 230
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->HIDE_ADDITIONAL_BAR:I

    .line 231
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->SHOW_LYRIC_PANEL:I

    .line 233
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/music/player/activity/MusicPlayer;->LONG_PRESS_TIME:J

    .line 235
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 236
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/music/player/activity/MusicPlayer;->STARTUP_DELAY:J

    .line 237
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MESSAGE_DELAY:J

    .line 238
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedFF:Z

    .line 239
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedREW:Z

    .line 245
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 247
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_SHOP:I

    .line 248
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_ADD_TO_QUICK_LIST:I

    .line 249
    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_TRANSFER_TO_PHONE:I

    .line 250
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_TRANSFER_TO_HEADSET:I

    .line 251
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_SHARE_TRACK_VIA:I

    .line 252
    iput v6, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_SET_AS:I

    .line 253
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_ADD_TO_PLAYLIST:I

    .line 254
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_GO_TO_QUICK_LIST:I

    .line 255
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_SETTING:I

    .line 256
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_DETAILS:I

    .line 257
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->MENU_GO_TO_DISC_PLUS:I

    .line 259
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    .line 264
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 265
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    .line 267
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 269
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    .line 270
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    .line 271
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    .line 272
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    .line 273
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    .line 274
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    .line 276
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    .line 278
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    .line 280
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    .line 282
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    .line 284
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->SETAS_OPTION_POPUP_DIALOG:I

    .line 285
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->SETAS_OPTION_POPUP_DIALOG_WITH_MYFAVES:I

    .line 286
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->PROCESSING_POPUP_DIALOG:I

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mOptionItems:Ljava/util/ArrayList;

    .line 289
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerInitDone:Z

    .line 290
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 296
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 299
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    .line 304
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    .line 306
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    .line 307
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 308
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mSubCursor:Landroid/database/Cursor;

    .line 309
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    .line 310
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCoverflowView:Landroid/widget/ImageView;

    .line 312
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAnimationScreen:Landroid/widget/FrameLayout;

    .line 314
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mDetailView:Landroid/widget/LinearLayout;

    .line 315
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mDetailViewImage:Landroid/widget/ImageView;

    .line 316
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mDetailViewImageReflect:Landroid/widget/ImageView;

    .line 317
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mAPIWarningDone:Z

    .line 319
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mIndexOfVisualization:I

    .line 321
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    .line 329
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->FLING_IMAGE_TO_LEFT:I

    .line 330
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->FLING_IMAGE_TO_RIGHT:I

    .line 331
    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->FLING_IGNORE_DISABLE:I

    .line 334
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQTopImage:[I

    .line 355
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImage:[I

    .line 376
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    .line 399
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    .line 552
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$2;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 564
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$3;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1525
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$14;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$14;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1545
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$15;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$15;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2002
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$16;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$16;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    .line 2512
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$17;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$17;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2544
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$18;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$18;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    .line 2953
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$20;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$20;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 3027
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$21;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$21;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 3053
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$22;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$22;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    .line 3100
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_CALL_RINGTONE:I

    .line 3101
    iput v4, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    .line 3102
    iput v5, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_ALARM_TONE:I

    .line 3126
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$23;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$23;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3272
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$24;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$24;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3315
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$25;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$25;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3475
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumId:I

    .line 3476
    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    .line 3616
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$26;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$26;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    .line 4178
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$27;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$27;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4241
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$28;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$28;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    iput v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 426
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$1;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    .line 443
    return-void

    .line 259
    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 334
    :array_1
    .array-data 0x4
        0x8at 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
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
    .end array-data

    .line 355
    :array_2
    .array-data 0x4
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
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
    .end array-data

    .line 376
    :array_3
    .array-data 0x4
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
        0x85t 0x0t 0xct 0x7ft
        0x86t 0x0t 0xct 0x7ft
        0x87t 0x0t 0xct 0x7ft
        0x88t 0x0t 0xct 0x7ft
        0x89t 0x0t 0xct 0x7ft
    .end array-data

    .line 399
    :array_4
    .array-data 0x4
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
        0x99t 0x0t 0xct 0x7ft
        0x9at 0x0t 0xct 0x7ft
        0x9bt 0x0t 0xct 0x7ft
        0x9ct 0x0t 0xct 0x7ft
        0x9dt 0x0t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->finishMusicPlayer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/player/activity/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedFF:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/music/player/activity/MusicPlayer;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/music/player/activity/MusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedFF:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/music/player/activity/MusicPlayer;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setRingtone(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/player/activity/MusicPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/music/player/activity/MusicPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->getArtwork(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/music/player/activity/MusicPlayer;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/music/player/activity/MusicPlayer;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/music/player/activity/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedREW:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/music/player/activity/MusicPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedREW:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/music/player/activity/MusicPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/music/player/activity/MusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->playList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->playSearch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/music/player/activity/MusicPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setVolume(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/music/player/activity/MusicPlayer;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    return-void
.end method

.method private changeVolume(I)V
    .locals 6
    .parameter "i"

    .prologue
    const/4 v5, 0x3

    .line 3068
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 3069
    .local v2, volMax:I
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 3073
    .local v1, volLevel:I
    if-nez v1, :cond_0

    if-gez p1, :cond_0

    .line 3074
    const/4 v0, 0x0

    .line 3082
    .local v0, volCur:I
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3083
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3084
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 3093
    return-void

    .line 3075
    .end local v0           #volCur:I
    :cond_0
    if-lt v1, v2, :cond_1

    if-lez p1, :cond_1

    .line 3076
    move v0, v2

    .restart local v0       #volCur:I
    goto :goto_0

    .line 3078
    .end local v0           #volCur:I
    :cond_1
    add-int v0, v1, p1

    .restart local v0       #volCur:I
    goto :goto_0
.end method

.method private finishMusicPlayer()V
    .locals 2

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "finishMusicPlayer() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 3472
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 3473
    return-void
.end method

.method private getArtwork(IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v6, "fail to read image."

    const-string v5, "IOException occured 2 :"

    .line 3942
    .line 3943
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3945
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3950
    if-nez v7, :cond_5

    .line 3951
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3952
    if-eqz v0, :cond_5

    .line 3953
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArtwork: uri ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3957
    if-lez p1, :cond_7

    .line 3958
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 3959
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    .line 3973
    :goto_0
    if-eqz v0, :cond_0

    .line 3976
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3986
    :cond_0
    :goto_1
    if-nez v1, :cond_6

    .line 3987
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3993
    :goto_2
    iput p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumId:I

    .line 3994
    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    .line 3996
    return-object v0

    .line 3977
    :catch_0
    move-exception v0

    .line 3978
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3979
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "fail to read image."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured 2 :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3962
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 3963
    :goto_3
    :try_start_3
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3964
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException occured 1 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3973
    if-eqz v1, :cond_1

    .line 3976
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3986
    :cond_1
    :goto_4
    if-nez v7, :cond_5

    .line 3987
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 3977
    :catch_2
    move-exception v0

    .line 3978
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3979
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "fail to read image."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured 2 :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3967
    :catch_3
    move-exception v1

    move-object v1, v7

    .line 3968
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory allocation failed getArtwork:uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3973
    if-eqz v1, :cond_2

    .line 3976
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 3986
    :cond_2
    :goto_6
    if-nez v7, :cond_5

    .line 3987
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 3977
    :catch_4
    move-exception v0

    .line 3978
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3979
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "fail to read image."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured 2 :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3973
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_7
    if-eqz v1, :cond_3

    .line 3976
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3986
    :cond_3
    :goto_8
    if-nez v7, :cond_4

    .line 3987
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/music/player/activity/MusicPlayer;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    :cond_4
    throw v0

    .line 3977
    :catch_5
    move-exception v1

    .line 3978
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3979
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "fail to read image."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured 2 :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3973
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 3967
    :catch_6
    move-exception v1

    move-object v1, v2

    goto/16 :goto_5

    .line 3962
    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :cond_5
    move-object v0, v7

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v0, v7

    move-object v1, v7

    goto/16 :goto_0
.end method

.method private getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultArtwork(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isBigImage="

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

    .line 4002
    const v0, 0x7f0200ff

    .line 4003
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 4004
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 4007
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4015
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4021
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 4008
    :catch_0
    move-exception v2

    .line 4009
    :try_start_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory allocation failed getDefaultArtwork:id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4014
    :catchall_0
    move-exception v0

    .line 4015
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4018
    :goto_1
    throw v0

    .line 4016
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private initializeControls()V
    .locals 7

    .prologue
    const/16 v4, 0xff

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 1048
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureSweepListener:Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

    .line 1049
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureSweepListener:Lcom/android/music/player/activity/MusicPlayer$OnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1051
    new-instance v1, Lcom/android/music/player/activity/MusicPlayer$4;

    invoke-direct {v1, p0}, Lcom/android/music/player/activity/MusicPlayer$4;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 1070
    new-instance v2, Lcom/android/music/player/activity/MusicPlayer$5;

    invoke-direct {v2, p0}, Lcom/android/music/player/activity/MusicPlayer$5;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 1109
    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    .line 1110
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1116
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 1117
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1118
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1120
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 1121
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1122
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1124
    new-instance v0, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;

    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;

    invoke-direct {v4, p0}, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-direct {v3, p0, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-direct {v0, v3}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    .line 1125
    new-instance v3, Lcom/android/music/player/activity/MusicPlayer$6;

    invoke-direct {v3, p0}, Lcom/android/music/player/activity/MusicPlayer$6;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v0, v3}, Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 1139
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1140
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v3}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1142
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1143
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 1145
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 1148
    const v0, 0x7f0c00a4

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 1149
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 1156
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    new-instance v3, Lcom/android/music/player/activity/MusicPlayer$7;

    invoke-direct {v3, p0}, Lcom/android/music/player/activity/MusicPlayer$7;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    const v0, 0x7f0c00a8

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    .line 1163
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v3, 0x7f020067

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/music/player/activity/MusicPlayer$8;

    invoke-direct {v3, p0}, Lcom/android/music/player/activity/MusicPlayer$8;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    const v0, 0x7f0c00a7

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    .line 1171
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1172
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v2}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1174
    const v0, 0x7f0c00aa

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    .line 1175
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1176
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;

    invoke-direct {v1}, Lcom/android/music/player/listener/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1178
    const v0, 0x7f0c00a1

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    .line 1179
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1180
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1182
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    .line 1183
    const v0, 0x7f0c00a3

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    .line 1185
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    .line 1186
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$9;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$9;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 1234
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    .line 1237
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$10;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$10;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 1242
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    .line 1245
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$11;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$11;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 1250
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1252
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    .line 1253
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$12;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$12;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 1296
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1298
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    .line 1299
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$13;

    invoke-direct {v0, p0}, Lcom/android/music/player/activity/MusicPlayer$13;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    .line 1310
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1312
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->createListButton()V

    .line 1314
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->attachTitleTextViews()V

    .line 1315
    return-void
.end method

.method private playList()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 2272
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    .line 2273
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 2274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2276
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 2277
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 2280
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 2284
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    if-eq v1, v3, :cond_5

    .line 2285
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 2286
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    aget v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2287
    iget-object v2, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v2, v3

    .line 2316
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    iget v4, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    aget v3, v3, v4

    const-string v4, "1"

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2317
    if-eqz v0, :cond_4

    .line 2319
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 2321
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2322
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2324
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3, v2, v1}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V

    .line 2326
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2331
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    .line 2332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    .line 2333
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 2334
    const/4 v0, 0x3

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2343
    :goto_1
    return-void

    .line 2290
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2291
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "playList(): intentPlayListType < 4,intentPlayListName==null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2341
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 37 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2299
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/music/common/data/MusicDB;->getPlaylistTracklistFilterByPlaylistName(Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;

    move-result-object v1

    .line 2301
    if-nez v1, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "playList(): intentPlayListType==4, filter==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2328
    :cond_4
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "playList(): cursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2336
    :cond_5
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "playList() intentPlayList==null error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private playSearch()V
    .locals 4

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "playSearch() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    .line 2351
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 2352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2354
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIteratorWithUri(Ljava/lang/String;)V

    .line 2356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    .line 2357
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 2358
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2369
    :goto_0
    return-void

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "playSearch() intentStreamMedia==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 2362
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2367
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 38 :"

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

.method private processIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x64

    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1393
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "processIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    if-eqz p1, :cond_4

    .line 1395
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    int-to-long v0, v0

    .line 1396
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 1397
    iput v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    .line 1399
    const-wide/32 v2, 0x100000

    and-long/2addr v2, v0

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1400
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "processIntent(): FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 1404
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1407
    :cond_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v0, v2

    const-wide/32 v2, 0x4000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.kill.garbageActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 1412
    :cond_1
    const-string v0, "musicplayer.action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    .line 1413
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    .line 1414
    const-string v0, "PlaylistType"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    .line 1415
    const-string v0, "PlaylistName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    .line 1416
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    .line 1417
    const-string v0, "FromList"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIsFromList:Z

    .line 1419
    iput-boolean v6, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    .line 1420
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1421
    iput v6, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    .line 1423
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1425
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "processIntent() INTENT_ACTION_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const-string v0, "SearchUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1427
    if-eqz v0, :cond_2

    .line 1428
    const-string v1, "setPlayIterator.id"

    invoke-static {v0}, Lcom/android/music/common/util/UriUtil;->getAudioIdFromContentUri(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1431
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setPlayIteratorWithIntent(Landroid/content/Intent;)V

    .line 1433
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_5

    .line 1434
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1480
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIntent():intentAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",intentStreamMedia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",intentPlayListType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",intentPlayListName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bCalledByList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mLaunchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_4
    return-void

    .line 1436
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/music/player/activity/MusicPlayer;->updateDefaultMediaInfo(Z)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    goto :goto_0

    .line 1439
    :cond_6
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    const-string v1, "launchplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    const-string v1, "com.android.music/launchplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1442
    :cond_8
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "processIntent() LAUNCH_PLAYER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1443
    :cond_9
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMimeType:Ljava/lang/String;

    const-string v1, "com.android.music/playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1445
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIntent() Voice_Command,lilstType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    if-ne v0, v8, :cond_a

    .line 1448
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "processIntent: intentPlayListType == -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :goto_1
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto/16 :goto_0

    .line 1451
    :cond_a
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    .line 1453
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    if-ne v0, v9, :cond_b

    .line 1454
    const-string v0, "PlaylistName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    .line 1457
    :cond_b
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    if-ge v0, v9, :cond_c

    .line 1458
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->PLAYLIST_TYPE:[I

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListType:I

    aget v1, v1, v2

    invoke-direct {v0, v1, v7}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1459
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v6, v8, v3}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v6

    goto :goto_1

    .line 1461
    :cond_c
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentPlayListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getPlaylistTracklistFilterByPlaylistName(Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;

    goto :goto_1

    .line 1469
    :cond_d
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "processIntent() List"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iput-boolean v7, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->setPlayIteratorWithIntent(Landroid/content/Intent;)V

    .line 1473
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_3

    .line 1474
    invoke-virtual {p0, v7}, Lcom/android/music/player/activity/MusicPlayer;->updateDefaultMediaInfo(Z)V

    .line 1475
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    goto/16 :goto_0
.end method

.method private registerMediaScannerReceiver()V
    .locals 2

    .prologue
    .line 2501
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2503
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2504
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2508
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2509
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/player/activity/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2510
    return-void
.end method

.method private setPlayIteratorWithIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 1492
    const-string v0, "setPlayIterator.id"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    .line 1494
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    if-eq v0, v8, :cond_4

    .line 1495
    const-string v0, "setPlayIterator.listType"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1496
    const-string v1, "setPlayIterator.filterId"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1497
    const-string v2, "setPlayIterator.filterId2"

    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1498
    const-string v3, "setPlayIterator.strFilter"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1499
    const-string v4, "setPlayIterator.strFilter2"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1501
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPlayIterator : LAUNCH_NORMAL, _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",listType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",filterId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",strFilter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",filterId2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",strFilter2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    if-gt v2, v8, :cond_0

    if-eqz v4, :cond_2

    .line 1507
    :cond_0
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 1509
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v2, v8, :cond_1

    move v5, v9

    :goto_0
    invoke-direct {v1, v3, v5, v2, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v1, v0, v9

    .line 1519
    :goto_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAudioID(Lcom/android/music/common/data/MpListFilter;I)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mNewAudioId:I

    .line 1523
    :goto_2
    return-void

    :cond_1
    move v5, v10

    .line 1509
    goto :goto_0

    .line 1513
    :cond_2
    new-instance v2, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v2, v0, v9}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    .line 1515
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v1, v8, :cond_3

    move v5, v9

    :goto_3
    invoke-direct {v2, v4, v5, v1, v3}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v0, v10

    goto :goto_1

    :cond_3
    move v5, v10

    goto :goto_3

    .line 1521
    :cond_4
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mIterator_Id == -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setRingtone(I)Landroid/net/Uri;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3334
    .line 3338
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v0

    .line 3339
    if-nez v0, :cond_1

    .line 3340
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setRingtone() strUri == null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 3383
    :cond_0
    :goto_0
    return-object v0

    .line 3343
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3344
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/music/player/activity/MusicPlayer;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    .line 3345
    goto :goto_0

    .line 3348
    :cond_2
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_CALL_RINGTONE:I

    if-ne p1, v1, :cond_4

    .line 3349
    const/4 v1, 0x1

    .line 3350
    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3373
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_CALL_RINGTONE:I

    if-ne p1, v1, :cond_0

    .line 3374
    const v1, 0x7f0a0050

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3377
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 3378
    :goto_2
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3379
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured  26 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 3352
    :cond_4
    :try_start_2
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    if-ne p1, v1, :cond_5

    .line 3353
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v1, v0}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3354
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3355
    const-string v3, "ringtone_filepath"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3356
    const-string v1, "ringtone_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3357
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3359
    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 3360
    :cond_5
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_ALARM_TONE:I

    if-ne p1, v1, :cond_3

    .line 3361
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v1, v0}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3362
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3365
    const-string v3, "set_alarm"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3368
    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3377
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private setVolume(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3098
    return-void
.end method

.method private showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 6
    .parameter "progress"
    .parameter "seekBar"

    .prologue
    .line 1014
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1015
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1016
    .local v0, bubbleX:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1017
    .local v1, bubbleY:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1019
    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    .line 1020
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 1026
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1027
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 1028
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1030
    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsVolumeBubbleRunable:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsVolumeBubbleRunable:Z

    .line 1035
    return-void

    .line 1021
    :cond_1
    if-nez p1, :cond_2

    .line 1022
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1024
    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private updateContentValue(ILandroid/net/Uri;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "MusicPlayer"

    const-string v0, "1"

    .line 3390
    .line 3393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3394
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3395
    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v2, :cond_0

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->IDX_CALL_RINGTONE:I

    if-ne p1, v2, :cond_1

    .line 3397
    :cond_0
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3402
    const/4 v0, 0x1

    .line 3416
    :goto_1
    return v0

    .line 3399
    :cond_1
    const-string v2, "is_alarm"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3403
    :catch_0
    move-exception v0

    .line 3404
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3405
    const-string v1, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 3414
    goto :goto_1

    .line 3408
    :catch_1
    move-exception v0

    .line 3409
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3410
    const-string v1, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsupportedOperationException occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 3412
    goto :goto_1
.end method


# virtual methods
.method protected attachTitleTextViews()V
    .locals 1

    .prologue
    .line 1918
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    .line 1919
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    .line 1920
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    .line 1921
    return-void
.end method

.method protected changePlayButton(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 2761
    if-eqz p1, :cond_0

    .line 2762
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2763
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2768
    :goto_0
    return-void

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2766
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected changeView()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v4, 0x1

    .line 4054
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    if-eqz v0, :cond_0

    .line 4133
    :goto_0
    return-void

    .line 4058
    :cond_0
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    .line 4061
    new-instance v1, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 4065
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 4066
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 4073
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4074
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "changeView() but getCurrentMedia()==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4119
    :catch_0
    move-exception v0

    .line 4121
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4128
    :goto_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-virtual {v0}, Lcom/android/music/player/widget/MusicPlayerWindow;->requestLayout()V

    .line 4130
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4131
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    goto :goto_0

    .line 4078
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4079
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4080
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4081
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4090
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    .line 4092
    const/4 v2, 0x0

    .line 4093
    iget v3, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    if-ne v3, v4, :cond_4

    .line 4094
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v2

    .line 4095
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 4098
    :cond_4
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v0, v2}, Lcom/android/music/common/data/MusicDB;->getItemPositionForDiscplus(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;)I

    move-result v2

    iput v2, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 4101
    const/16 v2, 0xd

    iget v3, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    if-eq v2, v3, :cond_5

    const/4 v2, 0x2

    iget v3, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    if-ne v2, v3, :cond_7

    .line 4105
    :cond_5
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4106
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4108
    iget v2, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 4109
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    goto :goto_2

    .line 4111
    :cond_6
    iget v2, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 4114
    :cond_7
    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 4115
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 4116
    const/16 v0, 0xc

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 4118
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/music/common/manager/MusicAppManager;->launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected changeView(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x33

    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4137
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    if-eqz v0, :cond_0

    .line 4176
    :goto_0
    return-void

    .line 4142
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    .line 4144
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->setContentView(I)V

    .line 4145
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V

    .line 4147
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4148
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4150
    :cond_1
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v0, :cond_2

    .line 4152
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 4153
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 4155
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4156
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 4159
    :cond_2
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v0, :cond_3

    .line 4160
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 4163
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo(Z)V

    .line 4165
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4166
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4167
    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewChanging:Z

    .line 4171
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    if-nez v0, :cond_4

    .line 4172
    invoke-virtual {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    goto :goto_0

    .line 4174
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    goto :goto_0
.end method

.method protected createListButton()V
    .locals 3

    .prologue
    .line 2773
    const v0, 0x7f0c00ab

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/util/IconTextButton;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonIconList:Lcom/android/music/common/util/IconTextButton;

    .line 2774
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonIconList:Lcom/android/music/common/util/IconTextButton;

    const v1, 0x7f020074

    const v2, 0x7f0a0040

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/util/IconTextButton;->setImageAndText(II)V

    .line 2775
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonIconList:Lcom/android/music/common/util/IconTextButton;

    new-instance v1, Lcom/android/music/player/activity/MusicPlayer$19;

    invoke-direct {v1, p0}, Lcom/android/music/player/activity/MusicPlayer$19;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/music/common/util/IconTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2826
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doSetListButton()V

    .line 2827
    return-void
.end method

.method public doChangeRepeatMode()V
    .locals 4

    .prologue
    .line 2906
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getRepeatMode()I

    move-result v0

    .line 2908
    packed-switch v0, :pswitch_data_0

    .line 2928
    :goto_0
    return-void

    .line 2910
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2911
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setRepeatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2923
    :catch_0
    move-exception v0

    .line 2924
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2925
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

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

    .line 2914
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2915
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setRepeatMode(I)V

    goto :goto_0

    .line 2918
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2919
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setRepeatMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doChangeShuffleMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2934
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2936
    :goto_0
    if-ne v0, v1, :cond_1

    .line 2937
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2939
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setShuffleMode(I)V

    .line 2951
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2934
    goto :goto_0

    .line 2941
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2943
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2946
    :catch_0
    move-exception v0

    .line 2947
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2948
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doPause()V
    .locals 4

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_1

    .line 2890
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->pause()V

    .line 2893
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    :cond_1
    :goto_0
    return-void

    .line 2894
    :catch_0
    move-exception v0

    .line 2895
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2896
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 1 :"

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

.method public doPlay()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2830
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "doPlay() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_0

    .line 2833
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2834
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->pause()V

    .line 2873
    :goto_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 2884
    :cond_0
    :goto_1
    return-void

    .line 2835
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2838
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2846
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v1, v0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2848
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2849
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 2850
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v2

    .line 2852
    if-nez v2, :cond_2

    .line 2853
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->playSeek(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2874
    :catch_0
    move-exception v0

    .line 2875
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2876
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 2 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2855
    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct {v3}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 2856
    iput-object v1, v3, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 2857
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v1}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v1

    iput v1, v3, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 2858
    iput v2, v3, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 2860
    iput-object v0, v3, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 2861
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    iput v0, v3, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 2863
    new-instance v0, Lcom/android/music/common/util/DrmServicePopup;

    invoke-direct {v0, p0, v3}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 2864
    invoke-virtual {v0}, Lcom/android/music/common/util/DrmServicePopup;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2878
    :catch_1
    move-exception v0

    .line 2879
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2881
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0044

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2867
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->playSeek(J)V

    goto/16 :goto_0

    .line 2870
    :cond_4
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->play()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method protected doPrepare()V
    .locals 4

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "doPrepare() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_1

    .line 1884
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "doPrepare() mCorePlayer == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1888
    :cond_1
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1889
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    .line 1890
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    iget v2, v2, Lcom/android/music/common/data/MpListFilter;->listType:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v1, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 1893
    iget v1, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1895
    :cond_2
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getCurrent_ID()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1904
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMpListFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-interface {v0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1911
    :catch_0
    move-exception v0

    .line 1912
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured in doPrepare():"

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

    .line 1898
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1899
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "doPrepare: The same audio ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1905
    :cond_5
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1906
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->prepareWithLastPlayedFile(Z)V

    goto/16 :goto_0

    .line 1908
    :cond_6
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    iget-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->intentIsFromList:Z

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->openCurrent(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected doSetListButton()V
    .locals 2

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonIconList:Lcom/android/music/common/util/IconTextButton;

    if-eqz v0, :cond_0

    .line 1712
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getItemCountFromDB()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1713
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonIconList:Lcom/android/music/common/util/IconTextButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/music/common/util/IconTextButton;->setVisibility(I)V

    .line 1720
    :cond_0
    :goto_0
    return-void

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonIconList:Lcom/android/music/common/util/IconTextButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/common/util/IconTextButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "doSetListButton()...RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected doSetSrsRepeatShuffleImage(IIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1673
    sget-boolean v0, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1681
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1693
    :goto_1
    if-ne v2, p2, :cond_2

    .line 1694
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1701
    :goto_2
    if-ne p3, v2, :cond_3

    .line 1702
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1707
    :goto_3
    return-void

    .line 1675
    :cond_0
    sget-object v0, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1683
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1686
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1689
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1704
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1681
    nop

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
    .line 4286
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method hideAdditionalPanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 973
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    .line 974
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 976
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 977
    .local v1, mPropertyBarFadeOut:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 979
    .local v0, mProgressBarFadeOut:Landroid/view/animation/Animation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 980
    invoke-virtual {v1}, Landroid/view/animation/Animation;->startNow()V

    .line 981
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 982
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 984
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 985
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 988
    return-void
.end method

.method hideVolumePanel()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 1043
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1045
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3464
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 3467
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 4028
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4037
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    .line 4038
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->changeView(I)V

    .line 4040
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 460
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 462
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->setVolumeControlStream(I)V

    .line 463
    iput-object p0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    .line 465
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 516
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 477
    :cond_1
    invoke-static {v3}, Lcom/android/music/common/util/MusicPlayerUtil;->setMusicPlayerResume(Z)V

    .line 480
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 482
    new-instance v0, Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-direct {v0, p0}, Lcom/android/music/player/widget/MusicPlayerWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    .line 483
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/music/player/widget/MusicPlayerWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-virtual {v0, p0}, Lcom/android/music/player/widget/MusicPlayerWindow;->setOnMusicPlayerViewChangeListener(Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->setContentView(Landroid/view/View;)V

    .line 489
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 491
    const v1, 0x7f030022

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    .line 493
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/music/player/widget/MusicPlayerWindow;->addView(Landroid/view/View;)V

    .line 494
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V

    .line 497
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 498
    new-instance v0, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v0}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 499
    iput-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    .line 501
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$Worker;

    const-string v1, "album art worker"

    invoke-direct {v0, v1}, Lcom/android/music/player/activity/MusicPlayer$Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    .line 502
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    invoke-virtual {v1}, Lcom/android/music/player/activity/MusicPlayer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    .line 504
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->processIntent(Landroid/content/Intent;)V

    .line 506
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->registerMediaScannerReceiver()V

    .line 507
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 509
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 512
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/player/activity/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 3107
    packed-switch p1, :pswitch_data_0

    .line 3122
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3109
    :pswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a004b

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3113
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 3114
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3115
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3116
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 3107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 589
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMenu:Landroid/view/Menu;

    .line 596
    const v0, 0x7f0a0024

    invoke-interface {p1, v3, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 598
    const/4 v0, 0x7

    const v1, 0x7f0a0029

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 600
    const v0, 0x7f0a0026

    invoke-interface {p1, v3, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 602
    const v0, 0x7f0a002f

    invoke-interface {p1, v3, v4, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 610
    const/4 v0, 0x5

    const v1, 0x7f0a0027

    invoke-interface {p1, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 614
    const/4 v0, 0x5

    const/4 v1, 0x6

    const v2, 0x7f0a0028

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020028

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 618
    const/16 v0, 0xb

    const/4 v1, 0x7

    const v2, 0x7f0a003d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 621
    const/4 v0, 0x6

    const/16 v1, 0x8

    const v2, 0x7f0a0035

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 623
    const/16 v0, 0x9

    const/16 v1, 0x9

    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 626
    const/16 v0, 0xa

    const/16 v1, 0xa

    const v2, 0x7f0a0041

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 630
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2645
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    .line 2647
    iput-boolean v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 2652
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2653
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 2654
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 2655
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    .line 2658
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_3

    .line 2659
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 2660
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1, v4}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 2662
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 2668
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2671
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2674
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 2676
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-static {v1}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V

    .line 2679
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2685
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2691
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2696
    :goto_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    if-eqz v1, :cond_4

    .line 2697
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    invoke-virtual {v1}, Lcom/android/music/player/activity/MusicPlayer$Worker;->quit()V

    .line 2698
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtWorker:Lcom/android/music/player/activity/MusicPlayer$Worker;

    .line 2701
    :cond_4
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 2702
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2703
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 2706
    :cond_5
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 2707
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2708
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 2712
    :cond_6
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerWindow:Lcom/android/music/player/widget/MusicPlayerWindow;

    .line 2713
    iput-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    .line 2717
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2718
    return-void

    .line 2680
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2681
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy : mVolumeChangeReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2686
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2687
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy : mMediaReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2692
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 2693
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy : mActivityUpdateReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method onFFDown()V
    .locals 3

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onFFDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/16 v0, 0xa

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1321
    return-void
.end method

.method onFFUp(J)V
    .locals 4
    .parameter

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFFUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 1326
    const/16 v0, 0xb

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1327
    const-wide/16 v0, 0x12c

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1332
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 14 :"

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1367
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown("

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

    .line 1369
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    .line 1373
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    .line 1374
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->showVolumePanel()V

    move v0, v3

    .line 1384
    :goto_0
    return v0

    .line 1376
    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 1377
    invoke-direct {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->changeVolume(I)V

    .line 1378
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->showVolumePanel()V

    move v0, v3

    .line 1379
    goto :goto_0

    .line 1384
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1388
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMusicPlayerViewChange(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 4050
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 524
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    .line 527
    if-eqz p1, :cond_0

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 530
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->processIntent(Landroid/content/Intent;)V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent() intent==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 770
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 940
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 772
    :pswitch_1
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 774
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v3, v1, v2

    .line 777
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v1

    .line 778
    if-ltz v1, :cond_2

    .line 779
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v2, v0, v1}, Lcom/android/music/common/data/MusicDB;->addItem(Lcom/android/music/common/data/MpListFilter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 782
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    .line 788
    :goto_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 786
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 935
    :catch_1
    move-exception v0

    .line 936
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected:ActivityNotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 791
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MENU_ADD_TO_QUICK_LIST is selected, but curAudioId<0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    :pswitch_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0a0020

    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 800
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-1"

    aput-object v3, v1, v2

    .line 802
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 803
    const-string v3, "ListType"

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 804
    const-string v3, "TitleText"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-string v0, "Conditions"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    const-string v0, "CheckListType"

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    invoke-virtual {p0, v2}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 814
    :pswitch_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 815
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getIndexOfPlayList()I

    move-result v1

    .line 817
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v2

    .line 818
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    .line 819
    const/4 v3, 0x0

    iget-object v4, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    if-ne v4, v8, :cond_4

    const-string v4, "0"

    :goto_2
    aput-object v4, v0, v3

    .line 821
    iget-object v3, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    if-eqz v3, :cond_5

    .line 822
    const/4 v3, 0x1

    iget-object v2, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 831
    :cond_3
    :goto_3
    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Z

    .line 832
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 833
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 835
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 836
    const-string v4, "ListType"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v4, "TitleText"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0x7f0a0035

    invoke-virtual {p0, v7}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v4, "Check"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    const-string v4, "CheckListType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    const-string v4, "CheckedList"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 850
    const-string v2, "Conditions"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const-string v0, "RootListType"

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getPlayListType()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onOptionsItemSelected():itemIndex=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {p0, v3}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 819
    :cond_4
    const-string v4, "1"

    goto/16 :goto_2

    .line 824
    :cond_5
    iget-object v3, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 825
    const/4 v3, 0x1

    iget-object v2, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v2, v0, v3

    goto :goto_3

    .line 827
    :cond_6
    const/4 v2, 0x1

    const-string v3, "-1"

    aput-object v3, v0, v2

    goto/16 :goto_3

    .line 860
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->changeView()V

    goto/16 :goto_0

    .line 864
    :pswitch_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->showDialog(I)V

    goto/16 :goto_0

    .line 869
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 874
    :pswitch_7
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_7

    .line 875
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onCreateDialog,SHARE_MUSIC_VIA_OPTION_DIALOG,mCorePlayer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 879
    :cond_7
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-nez v0, :cond_8

    .line 880
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onOptionsItemSelected-MENU_SHARE_TRACK_VIA : mediaAlbumInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 883
    :cond_8
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    .line 886
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const v1, 0x10060

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    .line 891
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 893
    :goto_4
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 895
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 896
    new-instance v4, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, p0, v5, v0}, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 899
    :cond_9
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 901
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v1, :cond_a

    .line 902
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 910
    :goto_5
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 904
    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 905
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 906
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 908
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    goto :goto_5

    .line 913
    :pswitch_8
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 914
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_b

    .line 915
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 916
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setUlpBypass(Z)V

    goto/16 :goto_0

    .line 918
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 920
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 921
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 923
    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 929
    :pswitch_9
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 930
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setUlpBypass(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
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
    const/16 v3, 0x9

    const/4 v4, 0x0

    .line 2561
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onPause() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2563
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 2564
    invoke-static {v4}, Lcom/android/music/common/util/MusicPlayerUtil;->setMusicPlayerResume(Z)V

    .line 2569
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2570
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2571
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v1, :cond_1

    .line 2573
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->offRealEQdata()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    .line 2585
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 2589
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2596
    :goto_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_3

    .line 2597
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 2599
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2605
    :goto_2
    sput-boolean v4, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 2606
    invoke-virtual {p0, v4}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    .line 2608
    return-void

    .line 2574
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2575
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2590
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2591
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

    goto :goto_1

    .line 2592
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 2593
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

    goto :goto_1

    .line 2600
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 2601
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mLowBatteryReceiver) IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2602
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 2603
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mLowBatteryReceiver) IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 636
    const/4 v0, 0x0

    .line 637
    const/4 v1, 0x0

    .line 647
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "mCorePlayer() : mCorePlayer == null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 765
    :goto_0
    return v0

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 657
    :goto_1
    if-nez v2, :cond_3

    move v3, v6

    move-object v4, v1

    move v1, v6

    .line 696
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 697
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 700
    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 701
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 703
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 704
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 711
    :goto_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicPlayerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 714
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    if-eqz v0, :cond_7

    .line 717
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 718
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 720
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 722
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    if-eqz v0, :cond_9

    move v0, v6

    move v1, v6

    .line 748
    :goto_4
    if-eqz v1, :cond_c

    .line 749
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 753
    :goto_5
    if-eqz v0, :cond_d

    .line 754
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 765
    :cond_2
    :goto_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0

    .line 653
    :catch_0
    move-exception v2

    .line 654
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v2, v0

    goto/16 :goto_1

    .line 666
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 668
    if-nez v0, :cond_4

    move v1, v6

    move v3, v6

    move-object v4, v0

    .line 670
    goto/16 :goto_2

    .line 675
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v1, v0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v1

    .line 676
    if-eqz v1, :cond_e

    .line 677
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v1}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v1

    .line 679
    if-nez v1, :cond_5

    move v1, v6

    move v3, v6

    :goto_7
    move-object v4, v0

    .line 691
    goto/16 :goto_2

    .line 683
    :cond_5
    iget-boolean v3, v1, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    .line 684
    iget-boolean v1, v1, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 687
    :catch_1
    move-exception v0

    .line 688
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 689
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0044

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v6

    .line 690
    goto/16 :goto_0

    .line 706
    :cond_6
    const/4 v0, 0x3

    :try_start_3
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 707
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 759
    :catch_2
    move-exception v0

    .line 760
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 761
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 18 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 762
    goto/16 :goto_0

    .line 727
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v0

    .line 730
    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    if-gez v0, :cond_a

    .line 732
    :cond_8
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 733
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 734
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 735
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 744
    :goto_8
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    move v0, v1

    move v1, v3

    goto/16 :goto_4

    .line 737
    :cond_a
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v2, v0}, Lcom/android/music/common/data/MusicDB;->isExistQuickList(I)Z

    move-result v0

    .line 738
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 739
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_b

    move v4, v7

    :goto_9
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 740
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 741
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_b
    move v4, v6

    .line 739
    goto :goto_9

    .line 751
    :cond_c
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 756
    :cond_d
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_6

    :cond_e
    move v1, v7

    move v3, v7

    goto/16 :goto_7
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 2374
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-eqz v0, :cond_0

    .line 2375
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->finishMusicPlayer()V

    .line 2376
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2377
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2425
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onResume() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2437
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00f3

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2439
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 2493
    :goto_0
    return-void

    .line 2452
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2453
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2454
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/player/activity/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2457
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedFF:Z

    .line 2458
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->bPressedREW:Z

    .line 2459
    iput-boolean v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    .line 2461
    invoke-static {v4}, Lcom/android/music/common/util/MusicPlayerUtil;->setMusicPlayerResume(Z)V

    .line 2464
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_1

    .line 2466
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2467
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2468
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v0, :cond_1

    .line 2469
    const/16 v0, 0x9

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v0, :cond_2

    .line 2479
    invoke-virtual {p0, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->showAdditionalPanel(ZZ)V

    .line 2480
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2484
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2485
    const-string v1, "musicplayer.show.progressbar"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2486
    const-string v1, "musicplayer.hide.progressbar"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2487
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/player/activity/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2489
    invoke-virtual {p0, v4}, Lcom/android/music/player/activity/MusicPlayer;->setEnableTextScroll(Z)V

    .line 2491
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doSetListButton()V

    goto :goto_0

    .line 2471
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2473
    :catch_0
    move-exception v0

    .line 2474
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method onRewDown()V
    .locals 3

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onRewDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/16 v0, 0xc

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1341
    return-void
.end method

.method onRewUp(J)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 1344
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->skipCount:I

    .line 1346
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1348
    const-wide/16 v0, 0x12c

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1349
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService;->seek(J)J

    .line 1351
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->prev()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1359
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 19 :"

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

.method protected onServicePrepared()V
    .locals 4

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onServicePrepared() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v0, :cond_0

    .line 2725
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 2730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2732
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mIterator_Id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2733
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 2734
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 2747
    :goto_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_2

    .line 2748
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->hideNotificationInfo()V

    .line 2749
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doSetListButton()V

    .line 2757
    :cond_2
    :goto_1
    return-void

    .line 2736
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2737
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->doPrepare()V

    .line 2738
    :cond_4
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2753
    :catch_0
    move-exception v0

    .line 2754
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2755
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 20 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2740
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->intentAction:Ljava/lang/String;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2742
    invoke-direct {p0}, Lcom/android/music/player/activity/MusicPlayer;->playSearch()V

    goto :goto_0

    .line 2744
    :cond_6
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "It is MusicPlayer, not PreviewPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0x33

    const/4 v4, 0x4

    .line 2381
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onStart() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    if-nez v0, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 2390
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->hideNotificationInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    .line 2399
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-eqz v0, :cond_3

    .line 2401
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2402
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2419
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/player/activity/MusicPlayer;->updateFullMediaInfo()V

    .line 2421
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2422
    return-void

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 36:"

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

    .line 2405
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2406
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2409
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v0, 0x13

    if-ge v1, v0, :cond_2

    .line 2411
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQTopImageView:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2412
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2413
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->EQBottomImageView:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2414
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2409
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2611
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onStop() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2614
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 2616
    if-ne v0, v2, :cond_2

    .line 2619
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2620
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->showNotificationInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2632
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2635
    :goto_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2641
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2642
    return-void

    .line 2622
    :catch_0
    move-exception v0

    .line 2623
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 35:"

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

    .line 2628
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onStop() called by LCD off.. do not Show notificationInfno"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2633
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method queueUpdate(IJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1991
    if-ne p1, v1, :cond_2

    .line 1992
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1997
    :goto_0
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2000
    :cond_1
    return-void

    .line 1994
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

.method protected refreshPlayStatus(J)V
    .locals 4
    .parameter

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshPlayStatus(millisecond = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    invoke-virtual {p0, p1, p2}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayedTime(J)V

    .line 1961
    long-to-double v0, p1

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1962
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1963
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 1964
    return-void
.end method

.method protected refreshPlayedTime(J)V
    .locals 6
    .parameter "millisecond"

    .prologue
    .line 1969
    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-eqz v2, :cond_0

    .line 1987
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v3, "refreshPlayedTime"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-boolean v2, p0, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    if-eqz v2, :cond_1

    .line 1979
    move-wide v0, p1

    .line 1984
    .local v0, playTimeMillisecond:J
    :goto_1
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    iget-wide v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    :goto_2
    iget-boolean v5, p0, Lcom/android/music/player/activity/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v3, v4, v5}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1986
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 1981
    .end local v0           #playTimeMillisecond:J
    :cond_1
    iget-wide v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    sub-long v0, v2, p1

    .restart local v0       #playTimeMillisecond:J
    goto :goto_1

    :cond_2
    move-wide v3, v0

    .line 1984
    goto :goto_2
.end method

.method protected setEnableTextScroll(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 1925
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1930
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1933
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1934
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1935
    :cond_2
    return-void
.end method

.method showAdditionalPanel(ZZ)V
    .locals 2
    .parameter "fromalbumart"
    .parameter "bShowLyric"

    .prologue
    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownAdditionalBar:Z

    .line 946
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 947
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 948
    iput-boolean p1, p0, Lcom/android/music/player/activity/MusicPlayer;->additionalPanelFromAlbumArt:Z

    .line 951
    return-void
.end method

.method showVolumePanel()V
    .locals 3

    .prologue
    const/16 v2, 0x1f

    .line 1002
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isShownVolumeBar:Z

    .line 1005
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-direct {p0, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 1007
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1008
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    .line 1009
    return-void
.end method

.method protected updateDefaultMediaInfo(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x9

    const/4 v5, 0x7

    const/4 v4, -0x1

    .line 1793
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultMediaInfo():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mNewAudioId:I

    if-gtz v0, :cond_2

    .line 1797
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    .line 1799
    :try_start_0
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_0

    .line 1800
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v0

    .line 1801
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    if-ne v0, v1, :cond_1

    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 1802
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultMediaInfo() but same audioID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :goto_0
    return-void

    .line 1805
    :cond_0
    iget v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    if-gtz v1, :cond_1

    .line 1806
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "updateDefaultMediaInfo() : mCorePlayer == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1809
    :catch_0
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    .line 1810
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    .line 1812
    :cond_1
    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    .line 1818
    :goto_1
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    if-gtz v0, :cond_6

    .line 1820
    iput-object v8, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    .line 1824
    :try_start_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_3

    .line 1825
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1830
    :goto_2
    if-nez v0, :cond_4

    .line 1832
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "updateMediaInfo : filePath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    :goto_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1839
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-nez v0, :cond_5

    .line 1842
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v5}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1843
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v5, v4, v7, v8}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1814
    :cond_2
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mNewAudioId:I

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    .line 1815
    iput v7, p0, Lcom/android/music/player/activity/MusicPlayer;->mNewAudioId:I

    goto :goto_1

    .line 1826
    :catch_1
    move-exception v0

    .line 1827
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    move-object v0, v8

    goto :goto_2

    .line 1835
    :cond_4
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1845
    :cond_5
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v6}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1846
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v6, v4, v4}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1850
    :cond_6
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getAlbumInfo(Landroid/net/Uri;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    .line 1854
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1855
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 1858
    :cond_7
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1859
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    if-nez v1, :cond_8

    const v1, 0x7f0a00ec

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    if-nez v1, :cond_9

    const v1, 0x7f0a00eb

    invoke-virtual {p0, v1}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1866
    iget v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mVisualizationType:I

    if-nez v0, :cond_a

    .line 1868
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v5}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1869
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    invoke-virtual {v0, v5, v1, v7}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1859
    :cond_8
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    goto :goto_4

    .line 1862
    :cond_9
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    goto :goto_5

    .line 1872
    :cond_a
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v6}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1873
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mAlbumArtHandler:Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    invoke-virtual {v0, v6, v1, v4}, Lcom/android/music/player/activity/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method protected updateFullMediaInfo()V
    .locals 1

    .prologue
    .line 1747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->updateFullMediaInfo(Z)V

    .line 1748
    return-void
.end method

.method protected updateFullMediaInfo(Z)V
    .locals 9
    .parameter "bForce"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    .line 1751
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v4, "updateFullMediaInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-virtual {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->updateDefaultMediaInfo(Z)V

    .line 1756
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v3, :cond_3

    .line 1758
    :try_start_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1760
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->duration()J

    move-result-wide v0

    .line 1761
    .local v0, duration:J
    iput-wide v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    .line 1762
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 1768
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(J)V

    .line 1789
    .end local v0           #duration:J
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v3

    const-wide/16 v5, -0x3e7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 1771
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-wide v3, v3, Lcom/android/music/player/data/MusicAlbumInfo;->mDuration:J

    :goto_1
    iput-wide v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    .line 1772
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/android/music/player/activity/MusicPlayer;->mMediaDuration:J

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1775
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 1778
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1780
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1781
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    move-wide v3, v7

    .line 1771
    goto :goto_1

    .line 1783
    :cond_3
    iget v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mCurrentAudioId:I

    if-lez v3, :cond_0

    .line 1784
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    invoke-static {v7, v8, v6}, Lcom/android/music/common/util/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    invoke-virtual {p0, v5, v5}, Lcom/android/music/player/activity/MusicPlayer;->changePlayButton(ZZ)V

    .line 1786
    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(J)V

    goto :goto_0
.end method

.method protected updatePlayStatus()V
    .locals 4

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "updatePlayStatus() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v0

    .line 1944
    const-wide/16 v2, -0x3e7

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1946
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1948
    :catch_0
    move-exception v0

    .line 1949
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1950
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 30 :"

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

.method protected updatePlayerInfo()V
    .locals 1

    .prologue
    .line 1723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayerInfo(Z)V

    .line 1724
    return-void
.end method

.method protected updatePlayerInfo(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "updatePlayerInfo() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-boolean v0, p0, Lcom/android/music/player/activity/MusicPlayer;->isActivityExit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1732
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/music/player/activity/MusicPlayer;->updateFullMediaInfo(Z)V

    .line 1734
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getRepeatMode()I

    move-result v0

    .line 1735
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getShuffleMode()I

    move-result v1

    .line 1736
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 1738
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/player/activity/MusicPlayer;->doSetSrsRepeatShuffleImage(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1742
    const-string v1, "MusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

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

    .line 1736
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
