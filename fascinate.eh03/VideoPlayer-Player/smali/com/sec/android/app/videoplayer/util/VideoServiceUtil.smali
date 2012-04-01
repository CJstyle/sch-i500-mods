.class public Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;
.super Ljava/lang/Object;
.source "VideoServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;,
        Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;,
        Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;
    }
.end annotation


# static fields
.field private static curPlayingPath:Ljava/lang/String;

.field public static error_count:I

.field public static mAutoMoveNextFile:Z

.field public static mBatteryChargingStatus:Z

.field private static mBatteryLevel:I

.field private static mBrightnessLevel:I

.field public static mBufferingChecker:Ljava/lang/Runnable;

.field public static mChangeViewDone:Z

.field private static mColortone:I

.field private static mCurIdx:I

.field public static mDetailPopup:Landroid/app/AlertDialog;

.field public static mDisableTvOut:Z

.field public static mDivXTVoutEnable:Z

.field public static mFileTitle:Ljava/lang/String;

.field private static mFitToScnMode:I

.field private static mHandler:Landroid/os/Handler;

.field public static mHasSubtitle:Z

.field private static mID:J

.field public static mIDAfterList:J

.field public static mIsMovieStore:Z

.field public static mKeyType:I

.field private static mListType:I

.field public static mLongKeyCnt:I

.field public static mLowBatteryFinishVideoPlayer:Z

.field private static mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;

.field private static mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static mOutdoorvisibility:Z

.field public static mPLAYERSTATUS:I

.field public static mPauseEnable:Z

.field public static mPlaybackComplete:Z

.field public static mPlayingChecker:Ljava/lang/Runnable;

.field public static mPlayingRequested:Z

.field public static mPositionWhenPaused:J

.field private static mPreviewMode:Z

.field private static mPreviewModeSortType:I

.field public static mProcessingDone:Z

.field public static mReadPosition:Z

.field private static mRepeatType:I

.field private static mResotreThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation
.end field

.field private static mSRS:Z

.field private static mScreenOrientation:I

.field private static mSelectFileIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendviaPopup:Landroid/app/AlertDialog;

.field private static mSortType:I

.field private static mSubTitleActivation:Z

.field private static mSubTitleColor:I

.field public static mSubTitleDialog:Landroid/app/AlertDialog;

.field public static mSubTitleLangArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mSubTitleLanguage:J

.field private static mSubTitleSize:I

.field public static mSubTitleSubDialog:Landroid/app/AlertDialog;

.field public static mSubTitleSyncInterval:J

.field public static mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

.field private static mThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation
.end field

.field private static mTotal:I

.field public static mUsePlayReady:Z

.field public static mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

.field public static mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field public static mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

.field private static mVolumeLevel:I

.field public static mWasIncomingCall:Z

.field public static mWasPlayingWhenPaused:Z

.field private static m_IsPlayReadyFile:Z

.field public static m_IsPyvFileInComplete:Z

.field private static m_PyvFilePath:Ljava/lang/String;

.field private static m_pyv_total_length:J

.field private static mbLockMode:Z

.field private static mfilepath:Ljava/lang/String;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

.field private static strVideo_uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 65
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 66
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 67
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    .line 68
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 69
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    .line 70
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    .line 71
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 72
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 138
    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    .line 139
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLongKeyCnt:I

    .line 140
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->error_count:I

    .line 141
    sput v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    .line 144
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    .line 145
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIDAfterList:J

    .line 146
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 147
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    .line 149
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mReadPosition:Z

    .line 150
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 151
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasIncomingCall:Z

    .line 152
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlaybackComplete:Z

    .line 154
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mAutoMoveNextFile:Z

    .line 156
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mProcessingDone:Z

    .line 157
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mChangeViewDone:Z

    .line 158
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    .line 159
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDisableTvOut:Z

    .line 160
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPauseEnable:Z

    .line 161
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLowBatteryFinishVideoPlayer:Z

    .line 162
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBatteryChargingStatus:Z

    .line 163
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHasSubtitle:Z

    .line 164
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingRequested:Z

    .line 166
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSRS:Z

    .line 167
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mOutdoorvisibility:Z

    .line 168
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mbLockMode:Z

    .line 169
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPreviewMode:Z

    .line 170
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleActivation:Z

    .line 177
    sput v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mScreenOrientation:I

    .line 179
    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mColortone:I

    .line 180
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBrightnessLevel:I

    .line 181
    sput v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFitToScnMode:I

    .line 182
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    .line 183
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSortType:I

    .line 184
    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBatteryLevel:I

    .line 185
    sput v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mRepeatType:I

    .line 186
    sput v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSize:I

    .line 187
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleColor:I

    .line 190
    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 191
    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    .line 193
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    .line 194
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->curPlayingPath:Ljava/lang/String;

    .line 195
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mfilepath:Ljava/lang/String;

    .line 197
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    .line 198
    const-wide/16 v0, 0x15c7

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLanguage:J

    .line 201
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mThumbnail:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mResotreThumbnail:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sConnectionMap:Ljava/util/HashMap;

    .line 209
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mUsePlayReady:Z

    .line 212
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPlayReadyFile:Z

    .line 213
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 216
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    .line 218
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    .line 219
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFileTitle:Ljava/lang/String;

    .line 1043
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingChecker:Ljava/lang/Runnable;

    .line 1290
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$2;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    .line 1399
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$3;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBufferingChecker:Ljava/lang/Runnable;

    .line 1674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mObservers:Ljava/util/List;

    .line 1702
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;

    invoke-direct {v0, v3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;-><init>(Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$1;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    return-void
.end method

.method private static IsFileIncomplete(Ljava/lang/String;)Z
    .locals 14
    .parameter "path"

    .prologue
    const/16 v13, 0x8

    const/4 v11, 0x7

    const-string v12, "VideoServiceUtil"

    .line 566
    new-array v8, v13, [I

    .line 569
    .local v8, temp_byte:[I
    const-wide/16 v1, 0x0

    .line 570
    .local v1, actual_length:J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, PYVFile:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 573
    .local v7, is:Ljava/io/FileInputStream;
    if-eqz v7, :cond_0

    .line 574
    const-string v9, "VideoServiceUtil"

    const-string v10, "FileTest Success!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    const-wide/16 v9, 0x46

    invoke-virtual {v7, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    .line 576
    const/4 v6, 0x7

    .local v6, index:I
    :goto_0
    if-ltz v6, :cond_1

    .line 578
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v9

    aput v9, v8, v6

    .line 576
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 580
    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_2

    .line 582
    aget v9, v8, v6

    int-to-long v9, v9

    add-long/2addr v1, v9

    .line 583
    shl-long/2addr v1, v13

    .line 580
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 585
    :cond_2
    const/4 v9, 0x7

    aget v9, v8, v9

    int-to-long v9, v9

    add-long/2addr v1, v9

    .line 586
    const-string v9, "VideoServiceUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IsFileIncomplete: Value at 0x46th byte:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 594
    .end local v6           #index:I
    .end local v7           #is:Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long v4, v1, v9

    .line 595
    .local v4, i:J
    sput-wide v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_pyv_total_length:J

    .line 596
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_3

    .line 598
    const-string v9, "VideoServiceUtil"

    const-string v9, "IsFileIncomplete: File is complete"

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v9, 0x0

    .line 604
    :goto_3
    return v9

    .line 589
    .end local v4           #i:J
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 590
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 591
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 592
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 603
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #i:J
    :cond_3
    const-string v9, "VideoServiceUtil"

    const-string v9, "IsFileIncomplete: File is incomplete"

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v9, 0x1

    goto :goto_3
.end method

.method public static SetSRS(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const-string v4, "VideoServiceUtil"

    const-string v3, "RemoteException occured  1 :"

    .line 230
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_1

    .line 232
    packed-switch p0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSRS:Z

    if-nez v1, :cond_0

    .line 241
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/high16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->internalSetEq(I)V

    .line 242
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSRS:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    const-string v1, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  1 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSRS:Z

    if-eqz v1, :cond_0

    .line 259
    :try_start_1
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/high16 v2, 0x40

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->internalSetEq(I)V

    .line 260
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSRS:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 262
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 264
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 265
    const-string v1, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException occured  1 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSRS:Z

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->handleNotification(II)V

    return-void
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-class v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    .line 1358
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1359
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 1360
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public static broadcastPausedPosition(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-string v3, "paused_position"

    const-string v6, "VideoServiceUtil"

    .line 1616
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v3, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    if-eqz p0, :cond_0

    .line 1620
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIsMovieStore:Z

    if-eqz v3, :cond_0

    .line 1623
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sdgtl.stamhubb.PAUSED_POSITION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1627
    .local v2, serviceIsInitialized:Z
    :try_start_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isInitialized()Z

    move-result v2

    .line 1628
    if-eqz v2, :cond_3

    .line 1630
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlaybackComplete:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    if-eqz v3, :cond_4

    .line 1631
    :cond_2
    const-string v3, "paused_position"

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1634
    :goto_1
    const-string v3, "filepath"

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1643
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 1647
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1648
    const-string v3, "VideoServiceUtil"

    const-string v4, "broadcastPausedPosition() : sendBroadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1650
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1652
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "VideoServiceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1633
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    :try_start_2
    const-string v3, "paused_position"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1638
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1639
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1640
    const-string v3, "VideoServiceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured  1 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static bufferstate()V
    .locals 7

    .prologue
    .line 1449
    const-string v3, "VideoServiceUtil"

    const-string v4, "bufferstate start!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->stopPlayingChecker()V

    .line 1452
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1454
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1455
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1456
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1458
    .local v1, uri:Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 1460
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setDrawableMode(Ljava/lang/String;)V

    .line 1461
    if-eqz v2, :cond_0

    .line 1463
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1464
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 1466
    :cond_0
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1467
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1479
    :cond_1
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1480
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBufferingChecker:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1481
    .end local v0           #stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_2
    return-void
.end method

.method public static checkIdExist_SelectedIdList(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 1250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1252
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 1254
    const/4 v1, 0x1

    .line 1257
    :goto_1
    return v1

    .line 1250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1257
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static checkMediaScannerRunning(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1506
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v0, :cond_0

    .line 1507
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 1509
    :cond_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static clearCachedBitmap()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 414
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mThumbnail:Ljava/util/HashMap;

    monitor-enter v0

    .line 416
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 418
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 420
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mResotreThumbnail:Ljava/util/HashMap;

    monitor-enter v0

    .line 424
    :try_start_1
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mResotreThumbnail:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 426
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mResotreThumbnail:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 428
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    return-void

    .line 420
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 428
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static clearObserver()V
    .locals 1

    .prologue
    .line 1668
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1669
    return-void
.end method

.method public static createSelectedFileIdList()V
    .locals 1

    .prologue
    .line 1216
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1217
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1219
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    .line 1220
    return-void
.end method

.method public static cur()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "VideoServiceUtil"

    .line 952
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v5, 0x14

    if-eq v4, v5, :cond_0

    .line 953
    const-string v4, "VideoServiceUtil"

    const-string v4, "cur() - VideoServiceUtil.mKeyType != SCHEME_VIDEO_LIST"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 988
    :goto_0
    return v4

    .line 957
    :cond_0
    sget-object v4, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sput v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    .line 959
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    if-nez v4, :cond_1

    .line 961
    const-string v4, "VideoServiceUtil"

    const-string v4, "cur() - total size is 0"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 962
    goto :goto_0

    .line 965
    :cond_1
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    if-gez v4, :cond_2

    .line 967
    const-string v4, "VideoServiceUtil"

    const-string v4, "cur() - current indext is -1"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 968
    goto :goto_0

    .line 971
    :cond_2
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    if-lt v4, v5, :cond_3

    .line 973
    const-string v4, "VideoServiceUtil"

    const-string v4, "cur() - mCurIndex >= mTotal."

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    sub-int/2addr v4, v8

    sput v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 975
    const-string v4, "VideoServiceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur() - get new mCurIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_3
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    if-lez v4, :cond_4

    .line 980
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    .line 981
    sget-object v4, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 982
    .local v1, video_Id:J
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 984
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 985
    .local v3, video_uri:Ljava/lang/String;
    invoke-static {v3, v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #video_Id:J
    .end local v3           #video_uri:Ljava/lang/String;
    :cond_4
    move v4, v8

    .line 988
    goto :goto_0
.end method

.method public static deleteId_SelectedIdList(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1240
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    .line 1242
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1246
    :cond_0
    return-void

    .line 1238
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static destroySelectedFileIdList()V
    .locals 1

    .prologue
    .line 1224
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1225
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1226
    :cond_0
    return-void
.end method

.method public static getBatteryLevel()I
    .locals 1

    .prologue
    .line 697
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBatteryLevel:I

    return v0
.end method

.method public static getBright()I
    .locals 1

    .prologue
    .line 672
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBrightnessLevel:I

    return v0
.end method

.method public static getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, b:Landroid/graphics/Bitmap;
    sget v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    if-eqz v2, :cond_0

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 453
    :cond_0
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mThumbnail:Ljava/util/HashMap;

    monitor-enter v2

    .line 455
    :try_start_0
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 456
    .local v1, videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 457
    :goto_0
    monitor-exit v2

    .line 467
    .end local v1           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_1
    :goto_1
    return-object v0

    .restart local v1       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_2
    move-object v0, v4

    .line 456
    goto :goto_0

    .line 457
    .end local v1           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 459
    :cond_3
    sget v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 461
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mResotreThumbnail:Ljava/util/HashMap;

    monitor-enter v2

    .line 463
    :try_start_1
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mResotreThumbnail:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 464
    .restart local v1       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 465
    :goto_2
    monitor-exit v2

    goto :goto_1

    .end local v1           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .restart local v1       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_4
    move-object v0, v4

    .line 464
    goto :goto_2
.end method

.method public static getColortone()I
    .locals 1

    .prologue
    .line 285
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mColortone:I

    return v0
.end method

.method public static getCurIdx()I
    .locals 1

    .prologue
    .line 1211
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    return v0
.end method

.method public static getCurPlayingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1199
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->curPlayingPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getFitToScreenMode()I
    .locals 1

    .prologue
    .line 505
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFitToScnMode:I

    return v0
.end method

.method public static getID()J
    .locals 2

    .prologue
    .line 1207
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    return-wide v0
.end method

.method public static declared-synchronized getKeyType()I
    .locals 2

    .prologue
    .line 1266
    const-class v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLockState()Z
    .locals 1

    .prologue
    .line 491
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mbLockMode:Z

    return v0
.end method

.method public static getOutdoorvisibility()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mOutdoorvisibility:Z

    return v0
.end method

.method public static getPreviewFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mfilepath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreviewSortType()I
    .locals 1

    .prologue
    .line 723
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPreviewModeSortType:I

    return v0
.end method

.method public static getPyvFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPyvFileTotalLength()J
    .locals 2

    .prologue
    .line 617
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_pyv_total_length:J

    return-wide v0
.end method

.method public static getRepeatType()I
    .locals 1

    .prologue
    .line 667
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mRepeatType:I

    return v0
.end method

.method public static getSRS()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSRS:Z

    return v0
.end method

.method public static getScreenOrientation()I
    .locals 1

    .prologue
    .line 1279
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mScreenOrientation:I

    return v0
.end method

.method public static getSelectedIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    .line 1233
    :cond_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSortType()I
    .locals 1

    .prologue
    .line 639
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSortType:I

    return v0
.end method

.method public static getSubTitleActivationFlag()Z
    .locals 1

    .prologue
    .line 345
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleActivation:Z

    return v0
.end method

.method public static getSubTitleColor()I
    .locals 2

    .prologue
    .line 375
    const/4 v0, -0x1

    .line 377
    .local v0, color:I
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleColor:I

    packed-switch v1, :pswitch_data_0

    .line 403
    :goto_0
    return v0

    .line 380
    :pswitch_0
    const/4 v0, -0x1

    .line 381
    goto :goto_0

    .line 384
    :pswitch_1
    const/high16 v0, -0x100

    .line 385
    goto :goto_0

    .line 388
    :pswitch_2
    const v0, -0xffff01

    .line 389
    goto :goto_0

    .line 392
    :pswitch_3
    const/high16 v0, -0x1

    .line 393
    goto :goto_0

    .line 396
    :pswitch_4
    const v0, -0xff8000

    .line 397
    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSubTitleColorType()I
    .locals 1

    .prologue
    .line 370
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleColor:I

    return v0
.end method

.method public static getSubTitleDefaultLanguage()J
    .locals 2

    .prologue
    .line 360
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLanguage:J

    return-wide v0
.end method

.method public static getSubTitleSize()I
    .locals 2

    .prologue
    .line 315
    const/16 v0, 0x19

    .line 317
    .local v0, size:I
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSize:I

    packed-switch v1, :pswitch_data_0

    .line 335
    :goto_0
    return v0

    .line 320
    :pswitch_0
    const/16 v0, 0x1e

    .line 321
    goto :goto_0

    .line 324
    :pswitch_1
    const/16 v0, 0x19

    .line 325
    goto :goto_0

    .line 328
    :pswitch_2
    const/16 v0, 0x12

    .line 329
    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSubTitleSizeType()I
    .locals 1

    .prologue
    .line 310
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSize:I

    return v0
.end method

.method public static getThumbnailHashMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 474
    :cond_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mThumbnail:Ljava/util/HashMap;

    .line 481
    :goto_0
    return-object v0

    .line 476
    :cond_1
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 478
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mResotreThumbnail:Ljava/util/HashMap;

    goto :goto_0

    .line 481
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUriByVideoId(J)Landroid/net/Uri;
    .locals 4
    .parameter "id"

    .prologue
    .line 1114
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 1115
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide p0

    .line 1117
    :cond_0
    const-string v1, "VideoServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUriByVideoId() - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", keyType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v0, 0x0

    .line 1121
    .local v0, VideoUri:Landroid/net/Uri;
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    .line 1123
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1138
    :cond_1
    :goto_0
    return-object v0

    .line 1125
    :cond_2
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_3

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_4

    .line 1129
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1131
    :cond_4
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x16

    if-eq v1, v2, :cond_5

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_5

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 1135
    :cond_5
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1203
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    return-object v0
.end method

.method public static getVolumeLevel()I
    .locals 1

    .prologue
    .line 654
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVolumeLevel:I

    return v0
.end method

.method private static handleNotification(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1684
    const-string v0, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotification key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1687
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1688
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;->OnVideoLockStateChanged(II)V

    goto :goto_0

    .line 1690
    :cond_0
    return-void
.end method

.method public static isLandscape()Z
    .locals 3

    .prologue
    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, bLandscape:Z
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mScreenOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1286
    const/4 v0, 0x1

    .line 1287
    :cond_0
    return v0
.end method

.method public static isPlayReadyFile()Z
    .locals 1

    .prologue
    .line 622
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPlayReadyFile:Z

    return v0
.end method

.method public static next(Z)Z
    .locals 12
    .parameter "fromUser"

    .prologue
    const/16 v7, 0x14

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "VideoServiceUtil"

    .line 762
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next() E - fromUser : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 765
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 766
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->resumeTvOut()V

    .line 768
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v5, v7, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x19

    if-eq v5, v6, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_0

    .line 772
    const-string v5, "VideoServiceUtil"

    const-string v5, "next() - not support launch mode"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 862
    .end local p0
    :goto_0
    return v5

    .line 776
    .restart local p0
    :cond_0
    const-wide/16 v2, 0x0

    .line 779
    .local v2, video_Id:J
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v5, v7, :cond_7

    .line 781
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next()- SCHEME_VIDEO_LIST. mID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->updateResumePos(Z)V

    .line 784
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    if-gtz v5, :cond_1

    .line 786
    const-string v5, "VideoServiceUtil"

    const-string v5, "next() - mTotal <= 0"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 787
    goto :goto_0

    .line 790
    :cond_1
    if-nez p0, :cond_2

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mRepeatType:I

    if-nez v5, :cond_5

    .line 792
    :cond_2
    const-wide/16 v5, -0x1

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    .line 793
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 795
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    sub-int/2addr v6, v9

    if-le v5, v6, :cond_3

    .line 796
    sput v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 814
    :cond_3
    :goto_1
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 815
    .local v1, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 817
    sget-object v5, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 818
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 819
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, video_uri:Ljava/lang/String;
    invoke-static {v4, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 823
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v5, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getResumePosition(J)J

    move-result-wide v5

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 824
    sput-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 825
    sput v11, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    .line 826
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    .line 852
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .end local v4           #video_uri:Ljava/lang/String;
    :cond_4
    :goto_2
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v6, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 854
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 855
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    :goto_3
    move v5, v9

    .line 862
    goto/16 :goto_0

    .line 798
    .restart local p0
    :cond_5
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mRepeatType:I

    if-ne v5, v11, :cond_3

    .line 800
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    sub-int/2addr v6, v9

    if-ne v5, v6, :cond_6

    move v5, v8

    .line 802
    goto/16 :goto_0

    .line 806
    :cond_6
    const-wide/16 v5, -0x1

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    .line 807
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 809
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    sub-int/2addr v6, v9

    if-le v5, v6, :cond_3

    .line 810
    sput v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    goto :goto_1

    .line 829
    :cond_7
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_8

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x19

    if-ne v5, v6, :cond_4

    .line 831
    :cond_8
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v5, v9, v6, v7}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoIdByBucketId(ZJ)J

    move-result-wide v2

    .line 832
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next()- My files. nextId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_9

    move v5, v8

    .line 836
    goto/16 :goto_0

    .line 839
    :cond_9
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 840
    .restart local v1       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 842
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 843
    .restart local v0       #uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 844
    .restart local v4       #video_uri:Ljava/lang/String;
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next()- My files. uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {v4, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 847
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    goto/16 :goto_2

    .line 857
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .end local v4           #video_uri:Ljava/lang/String;
    .end local p0
    :cond_a
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto/16 :goto_3

    .line 859
    :cond_b
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto/16 :goto_3
.end method

.method public static notifySettingChanged(II)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1680
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;

    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1681
    return-void
.end method

.method public static prev()Z
    .locals 12

    .prologue
    const/16 v11, 0x19

    const/16 v7, 0x14

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "VideoServiceUtil"

    .line 867
    const-string v5, "VideoServiceUtil"

    const-string v5, "prev() E "

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 870
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 871
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->resumeTvOut()V

    .line 873
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v5, v7, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-eq v5, v11, :cond_0

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_0

    .line 877
    const-string v5, "VideoServiceUtil"

    const-string v5, "prev() -  return"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 947
    :goto_0
    return v5

    .line 881
    :cond_0
    const-wide/16 v2, 0x0

    .line 883
    .local v2, video_Id:J
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v5, v7, :cond_4

    .line 885
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prev()- SCHEME_VIDEO_LIST. mID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->updateResumePos(Z)V

    .line 888
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    if-gtz v5, :cond_1

    .line 890
    const-string v5, "VideoServiceUtil"

    const-string v5, "prev() - mTotal <= 0"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 891
    goto :goto_0

    .line 894
    :cond_1
    const-wide/16 v5, -0x1

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    .line 895
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    sub-int/2addr v5, v10

    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 897
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    if-gez v5, :cond_2

    .line 898
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    sub-int/2addr v5, v10

    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 900
    :cond_2
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 901
    .local v1, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 903
    sget-object v5, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 904
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 905
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 906
    .local v4, video_uri:Ljava/lang/String;
    invoke-static {v4, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 909
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v5, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getResumePosition(J)J

    move-result-wide v5

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 910
    sput-boolean v10, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 911
    const/4 v5, 0x2

    sput v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    .line 912
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    .line 937
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .end local v4           #video_uri:Ljava/lang/String;
    :cond_3
    :goto_1
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v6, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 939
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 940
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    :goto_2
    move v5, v10

    .line 947
    goto/16 :goto_0

    .line 915
    :cond_4
    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_5

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v5, v11, :cond_3

    .line 917
    :cond_5
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v5, v9, v6, v7}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoIdByBucketId(ZJ)J

    move-result-wide v2

    .line 918
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prev()- prev Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_6

    move v5, v9

    .line 922
    goto/16 :goto_0

    .line 925
    :cond_6
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 926
    .restart local v1       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 928
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 929
    .restart local v0       #uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 930
    .restart local v4       #video_uri:Ljava/lang/String;
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prev()- uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-static {v4, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 933
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayback()V

    goto/16 :goto_1

    .line 942
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .end local v4           #video_uri:Ljava/lang/String;
    :cond_7
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto :goto_2

    .line 944
    :cond_8
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto :goto_2
.end method

.method public static resumeTvOut()V
    .locals 3

    .prologue
    const-string v2, "VideoServiceUtil"

    .line 1169
    const-string v0, "VideoServiceUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeTvOut() - Tv OUT Resume!!! E. mDivXTVoutEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    .line 1191
    const-string v0, "VideoServiceUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeTvOut() - Tv OUT Resume!!! X. mDivXTVoutEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void
.end method

.method public static savePausedPosition()V
    .locals 10

    .prologue
    const-string v9, "VideoServiceUtil"

    .line 1574
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v5, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v1

    .line 1578
    .local v1, filePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1580
    .local v2, isDrm:Z
    if-eqz v1, :cond_2

    .line 1582
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)Z

    move-result v2

    .line 1583
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "savePausedPosition() - isDrm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_2
    if-nez v2, :cond_0

    .line 1588
    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mReadPosition:Z

    if-nez v5, :cond_0

    .line 1593
    const/4 v5, 0x1

    :try_start_0
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mReadPosition:Z

    .line 1594
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 1596
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v3

    .line 1598
    .local v3, pausedPos:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_3

    .line 1599
    const-wide/16 v3, -0x1

    .line 1601
    :cond_3
    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1602
    sget-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIDAfterList:J

    .line 1603
    const-string v5, "VideoServiceUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "savePausedPosition() - mWasPlayingWhenPaused :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPositionWhenPaused : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1605
    .end local v3           #pausedPos:J
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1606
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1607
    const-string v5, "VideoServiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException occured  1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setBatteryLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 692
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBatteryLevel:I

    .line 693
    return-void
.end method

.method public static setBright(I)V
    .locals 0
    .parameter "bright"

    .prologue
    .line 677
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBrightnessLevel:I

    .line 678
    return-void
.end method

.method public static setBtnEnableFlag(ZZZ)V
    .locals 2
    .parameter "pause"
    .parameter "rew"
    .parameter "ff"

    .prologue
    .line 702
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 704
    .local v0, surfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v0, :cond_0

    .line 706
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPauseEnable:Z

    .line 707
    iget-object v1, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v1, p0, p1, p2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setBtnState(ZZZ)V

    .line 709
    :cond_0
    return-void
.end method

.method public static declared-synchronized setChangeViewDone(Z)V
    .locals 2
    .parameter "done"

    .prologue
    .line 1275
    const-class v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mChangeViewDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    monitor-exit v0

    return-void

    .line 1275
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setColortone(I)V
    .locals 0
    .parameter "colortone"

    .prologue
    .line 295
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mColortone:I

    .line 296
    return-void
.end method

.method public static setCurPlayingPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 1195
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->curPlayingPath:Ljava/lang/String;

    .line 1196
    return-void
.end method

.method public static setFitToScreenMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 496
    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 497
    const/4 p0, 0x0

    .line 499
    :cond_0
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFitToScnMode:I

    .line 500
    const-string v0, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFitToScreenMode() - mFitToScnMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mFitToScnMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public static declared-synchronized setKeyType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1261
    const-class v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    monitor-exit v0

    return-void

    .line 1261
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setListType(I)V
    .locals 0
    .parameter "listType"

    .prologue
    .line 644
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mListType:I

    .line 645
    return-void
.end method

.method public static setLockState(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 486
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mbLockMode:Z

    .line 487
    return-void
.end method

.method public static setMediaVideoList(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 628
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mCurIdx:I

    .line 629
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mTotal:I

    .line 630
    return-void
.end method

.method public static setOnVideoLockStateChangedObserver(Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$OnVideoLockStateChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1676
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mObservers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1677
    return-void
.end method

.method public static setOutdoorvisibility(Z)V
    .locals 0
    .parameter "out"

    .prologue
    .line 300
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mOutdoorvisibility:Z

    .line 301
    return-void
.end method

.method public static setPreviewFilePath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 728
    const-string v0, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewFilePath() - path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mfilepath:Ljava/lang/String;

    .line 730
    return-void
.end method

.method public static setPreviewMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 682
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPreviewMode:Z

    .line 683
    return-void
.end method

.method public static setPreviewSortType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 713
    const-string v0, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSortType() - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    if-nez p0, :cond_1

    const/16 v0, 0xe

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPreviewModeSortType:I

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const/16 v0, 0xb

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPreviewModeSortType:I

    goto :goto_0

    .line 717
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/16 v0, 0xc

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPreviewModeSortType:I

    goto :goto_0

    .line 718
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 v0, 0xd

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPreviewModeSortType:I

    goto :goto_0
.end method

.method private static setPyvFilePath()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "VideoServiceUtil"

    .line 524
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPlayReadyFile:Z

    .line 525
    new-instance v0, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v0}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    .line 526
    .local v0, prManager:Landroid/playready/playreadymanager/PlayReadyManager;
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 527
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 529
    const-string v1, "VideoServiceUtil"

    const-string v1, "VideoServiceUtil.mVideoDB.getFilePathbyId(VideoServiceUtil.getID()) returned null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 531
    const-string v1, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoServiceUtil.getVideoUri() originally returned:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 535
    const-string v1, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const-string v1, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoServiceUtil.getVideoUri() returned after substring:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mUsePlayReady:Z

    if-eqz v1, :cond_3

    .line 542
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/playready/playreadymanager/PlayReadyManager;->isPlayReadyFile(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v6, :cond_2

    .line 544
    sput-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPlayReadyFile:Z

    .line 545
    const-string v1, "VideoServiceUtil"

    const-string v1, "setPyvFilePath ISPLAYREADY is set to true"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->IsFileIncomplete(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    .line 548
    const-string v1, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPyvFilePath() PYV FilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    return-void

    .line 552
    :cond_2
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPlayReadyFile:Z

    .line 553
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    goto :goto_0

    .line 558
    :cond_3
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPlayReadyFile:Z

    .line 559
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->m_IsPyvFileInComplete:Z

    goto :goto_0
.end method

.method public static setRepeatType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 659
    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 660
    const/4 p0, 0x0

    .line 662
    :cond_0
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mRepeatType:I

    .line 663
    return-void
.end method

.method public static declared-synchronized setScreenOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1271
    const-class v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mScreenOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    monitor-exit v0

    return-void

    .line 1271
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setSortType(I)V
    .locals 0
    .parameter "sortType"

    .prologue
    .line 634
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSortType:I

    .line 635
    return-void
.end method

.method public static setSubTitleActivationFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 340
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleActivation:Z

    .line 341
    return-void
.end method

.method public static setSubTitleColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 365
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleColor:I

    .line 366
    return-void
.end method

.method public static setSubTitleDefaultLanguage(J)V
    .locals 4
    .parameter "langID"

    .prologue
    .line 350
    sput-wide p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleLanguage:J

    .line 353
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getCurrentSetLanguage(J)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, lang:Ljava/lang/String;
    const-string v1, "VideoServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSubTitleDefaultLanguage() lang : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateSubTitleLanguage(JLjava/lang/String;)I

    .line 356
    return-void
.end method

.method public static setSubTitleSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 305
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSize:I

    .line 306
    return-void
.end method

.method public static setVideoPath(Ljava/lang/String;J)V
    .locals 1
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 510
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    .line 511
    sput-wide p1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    .line 513
    if-eqz p0, :cond_0

    .line 514
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    .line 516
    :cond_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setPyvFilePath()V

    .line 519
    return-void
.end method

.method public static setVolumeLevel(I)V
    .locals 3
    .parameter "vol"

    .prologue
    .line 1378
    const-string v0, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeLevel(vol) - reset_volume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVolumeLevel:I

    .line 1380
    return-void
.end method

.method public static startPlayback()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "VideoServiceUtil"

    .line 739
    const-string v2, "VideoServiceUtil"

    const-string v2, "startPlayback() start"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_0

    .line 745
    :try_start_0
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->startPlayingChecker()V

    .line 756
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 757
    .local v1, msg:Landroid/os/Message;
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 759
    return-void

    .line 747
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 749
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 750
    const-string v2, "VideoServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startPlayingChecker()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 992
    sget-wide v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 995
    :cond_0
    const-string v3, "VideoServiceUtil"

    const-string v4, "startPlayingChecker() start!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    sput-boolean v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingRequested:Z

    .line 998
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1000
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1001
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1002
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->strVideo_uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1004
    .local v1, uri:Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 1006
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setDrawableMode(Ljava/lang/String;)V

    .line 1008
    if-eqz v2, :cond_1

    .line 1010
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1011
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 1014
    :cond_1
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPLAYERSTATUS:I

    if-eq v3, v7, :cond_2

    .line 1015
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1019
    .end local v0           #stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_2
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1020
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static stopBufferingChecker()V
    .locals 3

    .prologue
    .line 1384
    const-string v1, "VideoServiceUtil"

    const-string v2, "stopPlayingChecker() start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v1, :cond_0

    .line 1387
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1389
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1392
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1396
    .end local v0           #stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    :cond_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1397
    return-void
.end method

.method public static stopPlayingChecker()V
    .locals 3

    .prologue
    .line 1025
    const-string v1, "VideoServiceUtil"

    const-string v2, "stopPlayingChecker() start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v1, :cond_0

    .line 1029
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1031
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1034
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1038
    .end local v0           #stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    :cond_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1039
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPlayingRequested:Z

    .line 1041
    return-void
.end method

.method public static suspendTvOut()V
    .locals 0

    .prologue
    .line 1165
    return-void
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1366
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;

    .line 1367
    .local v0, sb:Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;
    if-nez v0, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1370
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1372
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    goto :goto_0
.end method

.method public static updateResumePos(Z)V
    .locals 14
    .parameter "pauseActivity"

    .prologue
    const-string v13, "VideoServiceUtil"

    .line 1514
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v8, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v5

    .line 1518
    .local v5, filePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1520
    .local v6, isDrm:Z
    if-eqz v5, :cond_2

    .line 1521
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v8, v5}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)Z

    move-result v6

    .line 1522
    const-string v8, "VideoServiceUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResumePos() - isDrm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_2
    if-nez v6, :cond_0

    .line 1528
    const-wide/16 v0, 0x0

    .line 1529
    .local v0, curPos:J
    const-wide/16 v2, 0x0

    .line 1530
    .local v2, duration:J
    const/4 v7, 0x0

    .line 1534
    .local v7, wasPlaying:Z
    :try_start_0
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v8}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v0

    .line 1535
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v8}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J

    move-result-wide v2

    .line 1536
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v8}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1538
    sub-long v8, v2, v0

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 1539
    const-wide/16 v0, 0x0

    .line 1545
    :cond_3
    :goto_1
    sget v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v9, 0x14

    if-ne v8, v9, :cond_4

    .line 1547
    sget-boolean v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mReadPosition:Z

    if-nez v8, :cond_4

    .line 1549
    const-string v8, "VideoServiceUtil"

    const-string v8, "updateResumePos() - SCHEME_VIDEO_LIST"

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateResumePosition(JJ)I

    .line 1551
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    sget-wide v11, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateSyncTime(JJ)I

    .line 1555
    :cond_4
    if-eqz p0, :cond_5

    .line 1557
    sget-boolean v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mReadPosition:Z

    if-nez v8, :cond_5

    .line 1559
    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    .line 1560
    sput-boolean v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    .line 1561
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mReadPosition:Z

    .line 1562
    sget-wide v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    sput-wide v8, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mIDAfterList:J

    .line 1566
    :cond_5
    const-string v8, "VideoServiceUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResumePos() - mWasPlayingWhenPaused :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mWasPlayingWhenPaused:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPositionWhenPaused : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mPositionWhenPaused:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1540
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1541
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1542
    const-string v8, "VideoServiceUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException occured  1 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static updateSyncTime()V
    .locals 4

    .prologue
    .line 408
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSyncTime(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    .line 409
    const-string v0, "VideoServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSyncTime() - mID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sync Time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method
