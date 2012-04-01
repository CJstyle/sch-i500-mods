.class public Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;
.super Ljava/lang/Object;
.source "VideoDRMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mConstraintInfo:Landroid/drm/mobile2/DrmBestRights;

.field private mConstraintType:I

.field private mContext:Landroid/content/Context;

.field private mDrmType:I

.field private mFilename:Ljava/lang/String;

.field private mIsDivx:Z

.field private mIsFL:Z

.field private mIsOMADrm:Z

.field private mIsPlayReadyDrm:Z

.field private mIsWMDrm:Z

.field private mPath:Ljava/lang/String;

.field private mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

.field private mPlayerType:I

.field private mSilentURL:Z

.field private mWMDrmConstraintInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

.field mbShare:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "VideoDRMUtil"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    .line 90
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    .line 94
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsPlayReadyDrm:Z

    .line 97
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mSilentURL:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsFL:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    .line 101
    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    .line 102
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 103
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mWMDrmConstraintInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 106
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    .line 108
    iput v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    .line 129
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 137
    :cond_0
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    return-object v0
.end method

.method private getDivXcurCnt(Ljava/lang/String;)J
    .locals 6
    .parameter "path"

    .prologue
    .line 716
    const/4 v2, 0x0

    .line 717
    .local v2, divXManager:Landroid/divxdrm/mobile/DivxDrmManager;
    const/4 v4, 0x0

    .line 718
    .local v4, info:Landroid/divxdrm/mobile/DrmDivxBestRight;
    invoke-static {}, Landroid/divxdrm/mobile/DivxDrmManager;->getInstance()Landroid/divxdrm/mobile/DivxDrmManager;

    move-result-object v2

    .line 719
    const-wide/16 v0, 0x0

    .line 723
    .local v0, Cnt:J
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/divxdrm/mobile/DivxDrmManager;->drmDivXGetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;

    move-result-object v4

    .line 724
    invoke-virtual {v4}, Landroid/divxdrm/mobile/DrmDivxBestRight;->getCurCount()J
    :try_end_0
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 735
    :goto_0
    return-wide v0

    .line 726
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 728
    .local v3, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v3}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    goto :goto_0

    .line 730
    .end local v3           #e:Landroid/divxdrm/mobile/DivxDrmException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 732
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDivXtotalCnt(Ljava/lang/String;)J
    .locals 6
    .parameter "path"

    .prologue
    .line 740
    const/4 v2, 0x0

    .line 741
    .local v2, divXManager:Landroid/divxdrm/mobile/DivxDrmManager;
    const/4 v4, 0x0

    .line 742
    .local v4, info:Landroid/divxdrm/mobile/DrmDivxBestRight;
    invoke-static {}, Landroid/divxdrm/mobile/DivxDrmManager;->getInstance()Landroid/divxdrm/mobile/DivxDrmManager;

    move-result-object v2

    .line 743
    const-wide/16 v0, 0x0

    .line 747
    .local v0, Cnt:J
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/divxdrm/mobile/DivxDrmManager;->drmDivXGetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;

    move-result-object v4

    .line 748
    invoke-virtual {v4}, Landroid/divxdrm/mobile/DrmDivxBestRight;->getOrgCount()J
    :try_end_0
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 755
    :goto_0
    return-wide v0

    .line 749
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 750
    .local v3, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v3}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    goto :goto_0

    .line 751
    .end local v3           #e:Landroid/divxdrm/mobile/DivxDrmException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 752
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getOMARemainedCnt(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 692
    const/4 v1, 0x0

    .line 693
    .local v1, drmManager:Landroid/drm/mobile2/OMADRMManager;
    const/4 v3, 0x0

    .line 694
    .local v3, info:Landroid/drm/mobile2/DrmBestRights;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 695
    const/4 v0, 0x0

    .line 699
    .local v0, Cnt:I
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;

    move-result-object v3

    .line 700
    iget v0, v3, Landroid/drm/mobile2/DrmBestRights;->curCount:I
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 711
    :goto_0
    return v0

    .line 702
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 704
    .local v2, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v2}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 706
    .end local v2           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 708
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkDivxRightStatus(Ljava/lang/String;)I
    .locals 9
    .parameter "filePath"

    .prologue
    const/16 v8, 0x1e

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 449
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "checkDivxRightStatus() - start."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-nez p1, :cond_0

    .line 453
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "checkDivxRightStatus() - file path is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 508
    :goto_0
    return v4

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, divxManager:Landroid/divxdrm/mobile/DivxDrmManager;
    invoke-static {}, Landroid/divxdrm/mobile/DivxDrmManager;->getInstance()Landroid/divxdrm/mobile/DivxDrmManager;

    move-result-object v1

    .line 460
    const/4 v3, -0x1

    .line 464
    .local v3, rightStatus:I
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "checkDivxRightStatus() - check."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4}, Landroid/divxdrm/mobile/DivxDrmManager;->drmDivXGetRightStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 478
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDivxRightStatus() - rightStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-ne v3, v7, :cond_1

    .line 481
    const/16 v4, 0x24

    goto :goto_0

    .line 467
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 469
    .local v2, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v2}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    move v4, v6

    .line 470
    goto :goto_0

    .line 472
    .end local v2           #e:Landroid/divxdrm/mobile/DivxDrmException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 474
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v4, v6

    .line 475
    goto :goto_0

    .line 482
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 483
    const/16 v4, 0x25

    goto :goto_0

    .line 484
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 485
    const/16 v4, 0x26

    goto :goto_0

    .line 486
    :cond_3
    if-nez v3, :cond_5

    .line 488
    const/4 v0, 0x0

    .line 491
    .local v0, bestRight:Landroid/divxdrm/mobile/DrmDivxBestRight;
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1, p1, v4}, Landroid/divxdrm/mobile/DivxDrmManager;->drmDivXGetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;
    :try_end_1
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 502
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v0}, Landroid/divxdrm/mobile/DrmDivxBestRight;->getDrmMode()I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Landroid/divxdrm/mobile/DrmDivxBestRight;->getOrgCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 503
    const/16 v4, 0x27

    goto :goto_0

    .line 493
    :catch_2
    move-exception v2

    .line 495
    .local v2, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v2}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    goto :goto_1

    .line 497
    .end local v2           #e:Landroid/divxdrm/mobile/DivxDrmException;
    :catch_3
    move-exception v2

    .line 499
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    move v4, v8

    .line 505
    goto :goto_0

    .end local v0           #bestRight:Landroid/divxdrm/mobile/DrmDivxBestRight;
    :cond_5
    move v4, v8

    .line 508
    goto :goto_0
.end method

.method public checkIsDivx(Ljava/lang/String;)Z
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, divxManager:Landroid/divxdrm/mobile/DivxDrmManager;
    invoke-static {}, Landroid/divxdrm/mobile/DivxDrmManager;->getInstance()Landroid/divxdrm/mobile/DivxDrmManager;

    move-result-object v1

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, bDvix:Z
    const/4 v3, 0x0

    .line 323
    .local v3, info:Landroid/divxdrm/mobile/DrmDivxBestRight;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->isDivXFile(Ljava/lang/String;)Z

    move-result v0

    .line 324
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIsDivx() - this file is Divx file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    .line 327
    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4}, Landroid/divxdrm/mobile/DivxDrmManager;->drmDivXGetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;

    move-result-object v3

    .line 329
    iget-boolean v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    if-eqz v4, :cond_1

    .line 331
    invoke-virtual {v3}, Landroid/divxdrm/mobile/DrmDivxBestRight;->getComposite()Z

    move-result v4

    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    .line 332
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    .line 337
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIsDivx() - mDivXTVoutEnable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z

    if-nez v4, :cond_2

    .line 340
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->suspendTvOut()V
    :try_end_0
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    return v4

    .line 335
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDivXTVoutEnable:Z
    :try_end_1
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 344
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 346
    .local v2, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v2}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    .line 347
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    goto :goto_1

    .line 341
    .end local v2           #e:Landroid/divxdrm/mobile/DivxDrmException;
    :cond_2
    :try_start_2
    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDisableTvOut:Z

    if-nez v4, :cond_0

    .line 342
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->resumeTvOut()V
    :try_end_2
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 349
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 351
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    goto :goto_1
.end method

.method public checkIsDrm(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsDrm() - mPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, isDrm:Z
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsPlayReadyDrm:Z

    if-eqz v1, :cond_2

    .line 155
    :cond_0
    const/4 v0, 0x1

    .line 173
    :cond_1
    :goto_0
    return v0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsOMADrm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWMDRM(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsPlayReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkIsOMADrm(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, drmManager:Landroid/drm/mobile2/OMADRMManager;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    .line 203
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    .line 204
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIsDRM() - this file is DRM file is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 208
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 209
    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 210
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    .end local v2           #lastIndex:I
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    return v3

    .line 212
    .restart local v2       #lastIndex:I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f07002f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;
    :try_end_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 214
    .end local v2           #lastIndex:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 216
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 220
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkIsPlayReady(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 229
    new-instance v0, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v0}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    .line 230
    .local v0, manager:Landroid/playready/playreadymanager/PlayReadyManager;
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 232
    invoke-virtual {v0, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->isPlayReadyFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsPlayReadyDrm:Z

    .line 237
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsPlayReadyDrm:Z

    if-eqz v1, :cond_0

    .line 238
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    .line 241
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsPlayReadyDrm:Z

    return v1

    .line 235
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsPlayReadyDrm:Z

    goto :goto_0
.end method

.method public checkIsShare(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"

    .prologue
    const/4 v3, 0x1

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsDrm() - mPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    .line 561
    :goto_0
    return v0

    .line 553
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsOMADrm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsWMDRM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsPlayReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    goto :goto_0

    :cond_2
    move v0, v3

    .line 558
    goto :goto_0

    :cond_3
    move v0, v3

    .line 561
    goto :goto_0
.end method

.method public checkIsValidOMADrm(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    .line 360
    const/4 v2, 0x0

    .line 362
    .local v2, result:I
    const/4 v0, 0x0

    .line 363
    .local v0, drmManager:Landroid/drm/mobile2/OMADRMManager;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    .line 367
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 378
    :goto_0
    if-nez v2, :cond_0

    move v3, v4

    :goto_1
    return v3

    .line 369
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v1

    .line 375
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public checkIsValidPlayReady(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, bValid:Z
    new-instance v1, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v1}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    .line 387
    .local v1, prManager:Landroid/playready/playreadymanager/PlayReadyManager;
    invoke-virtual {v1, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    if-eqz v2, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    invoke-virtual {v2}, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->PrintRights()V

    .line 394
    :cond_0
    return v0
.end method

.method public checkIsValidWMDrm(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v1

    .line 406
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->queryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mWMDrmConstraintInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :try_end_0
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mWMDrmConstraintInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    if-eqz v2, :cond_0

    .line 418
    const/4 v2, 0x1

    .line 420
    :goto_1
    return v2

    .line 408
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 410
    .local v0, e:Landroid/wmdrm/mobile/WMDRMDRMException;
    invoke-virtual {v0}, Landroid/wmdrm/mobile/WMDRMDRMException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v0           #e:Landroid/wmdrm/mobile/WMDRMDRMException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 414
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkIsWMDRM(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v1

    .line 283
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isPlayreadyFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    .line 285
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIsWMDRM() - this file is WMDRM file is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    if-eqz v2, :cond_0

    .line 288
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z
    :try_end_0
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    return v2

    :cond_1
    move v2, v3

    .line 283
    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 292
    .local v0, e:Landroid/wmdrm/mobile/WMDRMDRMException;
    invoke-virtual {v0}, Landroid/wmdrm/mobile/WMDRMDRMException;->printStackTrace()V

    goto :goto_1

    .line 294
    .end local v0           #e:Landroid/wmdrm/mobile/WMDRMDRMException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 296
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public checkIsWifiEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "SyncAppService"

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 249
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const-string v2, "SyncAppService"

    const-string v2, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 265
    :goto_0
    return v2

    .line 256
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 257
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const-string v2, "SyncAppService"

    const-string v2, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v2, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const-string v2, "SyncAppService"

    const-string v2, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 265
    goto :goto_0
.end method

.method public checkValidRights(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 566
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "checkValidRights() - start."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-nez p1, :cond_0

    .line 570
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "checkValidRights() - file path is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 607
    :goto_0
    return v4

    .line 574
    :cond_0
    const/4 v0, 0x0

    .line 575
    .local v0, drmManager:Landroid/drm/mobile2/OMADRMManager;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    .line 579
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v2

    .line 580
    .local v2, fileinfo:[I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkValidRights() - this \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' DRM version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DRM type of file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v4, 0x1

    aget v4, v2, v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    .line 588
    :cond_1
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v3

    .line 590
    .local v3, result:I
    if-eqz v3, :cond_5

    .line 592
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "hasValidRights check. no Rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 593
    goto :goto_0

    .line 584
    .end local v3           #result:I
    :cond_2
    const/4 v4, 0x1

    aget v4, v2, v4

    if-ne v7, v4, :cond_3

    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 596
    .end local v2           #fileinfo:[I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 598
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    move v4, v8

    .line 599
    goto :goto_0

    .line 585
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    .restart local v2       #fileinfo:[I
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    aget v4, v2, v4

    if-ne v9, v4, :cond_4

    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I
    :try_end_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 601
    .end local v2           #fileinfo:[I
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 603
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v4, v8

    .line 604
    goto :goto_0

    .line 586
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #fileinfo:[I
    :cond_4
    const/4 v4, 0x1

    :try_start_2
    aget v4, v2, v4

    if-ne v10, v4, :cond_1

    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I
    :try_end_2
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .restart local v3       #result:I
    :cond_5
    move v4, v7

    .line 607
    goto :goto_0
.end method

.method public getDetailInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    const/16 v18, 0x0

    .line 968
    .local v18, rightsCount:I
    const/4 v14, 0x0

    .line 970
    .local v14, permissionCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v5, detailInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;>;"
    const/4 v9, 0x0

    .line 973
    .local v9, info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 977
    const/4 v6, 0x0

    .line 978
    .local v6, drmManager:Landroid/drm/mobile2/OMADRMManager;
    :try_start_0
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v6

    .line 980
    const/16 v21, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_0

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getDetailInfo()"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", this file do not have any permission"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/16 v21, 0x0

    .line 1190
    .end local v6           #drmManager:Landroid/drm/mobile2/OMADRMManager;
    .end local p1
    :goto_0
    return-object v21

    .line 986
    .restart local v6       #drmManager:Landroid/drm/mobile2/OMADRMManager;
    .restart local p1
    :cond_0
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;

    move-result-object v12

    .line 988
    .local v12, omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    if-nez v12, :cond_1

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "getDetailInfo() omaDrmConstInfo==null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/16 v21, 0x0

    goto :goto_0

    .line 994
    :cond_1
    move-object v0, v12

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 996
    .local v17, rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 998
    const/4 v8, 0x0

    .end local p1
    .local v8, i:I
    :goto_1
    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1000
    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;->drmRightsPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1001
    .local v16, rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v14

    .line 1003
    const/4 v11, 0x0

    .local v11, j:I
    move-object v10, v9

    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .local v10, info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    :goto_2
    if-ge v11, v14, :cond_3

    .line 1005
    :try_start_1
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;

    .line 1006
    .local v13, permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    new-instance v9, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;

    invoke-direct {v9}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1008
    .end local v10           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    :try_start_2
    move-object v0, v13

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->type:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    .line 1009
    move-object v0, v13

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curConstraints:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->constraintType:I

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "getDetailInfo()%d,%d,%d,%d "

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object v0, v9

    iget v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object v0, v9

    iget v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->constraintType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    move-object v0, v9

    iget v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionType:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 1028
    :goto_3
    :pswitch_0
    move-object v0, v9

    iget v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->constraintType:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "getDetailRightsPermission() DRM type is incorrect"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :goto_4
    :sswitch_0
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v11, v11, 0x1

    move-object v10, v9

    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v10       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    goto/16 :goto_2

    .line 1015
    .end local v10           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    :pswitch_1
    const v21, 0x7f070050

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1081
    .end local v8           #i:I
    .end local v11           #j:I
    .end local v12           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v13           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v16           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v17           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_0
    move-exception v21

    move-object/from16 v7, v21

    .line 1082
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v6           #drmManager:Landroid/drm/mobile2/OMADRMManager;
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_6
    move-object/from16 v21, v5

    .line 1190
    goto/16 :goto_0

    .line 1018
    .restart local v6       #drmManager:Landroid/drm/mobile2/OMADRMManager;
    .restart local v8       #i:I
    .restart local v11       #j:I
    .restart local v12       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v13       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v16       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v17       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :pswitch_2
    const v21, 0x7f07004f

    :try_start_3
    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1083
    .end local v8           #i:I
    .end local v11           #j:I
    .end local v12           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v13           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v16           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v17           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_1
    move-exception v21

    move-object/from16 v7, v21

    .line 1084
    .local v7, e:Landroid/drm/mobile2/OMADRMException;
    :goto_7
    invoke-virtual {v7}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_6

    .line 1021
    .end local v7           #e:Landroid/drm/mobile2/OMADRMException;
    .restart local v8       #i:I
    .restart local v11       #j:I
    .restart local v12       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v13       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v16       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v17       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :pswitch_3
    const v21, 0x7f070051

    :try_start_4
    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1085
    .end local v8           #i:I
    .end local v11           #j:I
    .end local v12           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v13           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .end local v16           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v17           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_2
    move-exception v21

    move-object/from16 v7, v21

    .line 1086
    .local v7, e:Ljava/io/IOException;
    :goto_8
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1024
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #i:I
    .restart local v11       #j:I
    .restart local v12       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v13       #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v16       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v17       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :pswitch_4
    const v21, 0x7f070052

    :try_start_5
    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    goto :goto_3

    .line 1031
    :sswitch_1
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070053

    aput v23, v21, v22

    goto :goto_4

    .line 1035
    :sswitch_2
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070056

    aput v23, v21, v22

    .line 1036
    const-string v21, "%d/%d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v13

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object v0, v13

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 1040
    :sswitch_3
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070054

    aput v23, v21, v22

    .line 1041
    const-string v21, "%4d/%2d/%2d %2d:%2d:%2d - %4d/%2d/%2d %2d:%2d:%2d"

    const/16 v22, 0xc

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x6

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x7

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x8

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x9

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xa

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xb

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 1049
    :sswitch_4
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070057

    aput v23, v21, v22

    .line 1050
    const-string v21, "%4d/%2d/%2d %2d:%2d:%2d"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 1056
    :sswitch_5
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070054

    aput v23, v21, v22

    .line 1057
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const v23, 0x7f070056

    aput v23, v21, v22

    .line 1058
    const-string v21, "%4d/%2d/%2d %2d:%2d:%2d"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->month:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->day:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->hours:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->minutes:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    move-object v0, v13

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->seconds:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_4

    .line 1064
    :sswitch_6
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070059

    aput v23, v21, v22

    .line 1065
    const-string v21, "%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v13

    iget v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curAccumulated:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    .line 998
    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .end local v13           #permission:Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
    .restart local v10       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object v9, v10

    .end local v10           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    goto/16 :goto_1

    .line 1089
    .end local v6           #drmManager:Landroid/drm/mobile2/OMADRMManager;
    .end local v8           #i:I
    .end local v11           #j:I
    .end local v12           #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .end local v16           #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .end local v17           #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    .restart local p1
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mWMDrmConstraintInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo;->wmdrmArrayRightsObj:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 1092
    .local v20, wmdrmArrayRightsObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1094
    const/16 v19, 0x0

    .line 1096
    .local v19, wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_9
    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1098
    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    check-cast v19, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    .line 1099
    .restart local v19       #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    new-instance v9, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;

    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    invoke-direct {v9}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;-><init>()V

    .line 1101
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 1103
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070056

    aput v23, v21, v22

    .line 1104
    const-string v21, "%d/%d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1132
    :cond_5
    :goto_a
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1107
    :cond_6
    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1108
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070053

    aput v23, v21, v22

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto :goto_a

    .line 1113
    :cond_7
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070055

    aput v23, v21, v22

    .line 1115
    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1116
    const-string v21, "- %4d/%2d/%2d %2d:%2d:%2d"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 1119
    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1120
    const-string v21, "%4d/%2d/%2d %2d:%2d:%2d - %4d/%2d/%2d %2d:%2d:%2d"

    const/16 v22, 0xc

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x6

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x7

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x9

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xa

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xb

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 1125
    :cond_9
    move-object/from16 v0, v19

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 1126
    const-string v21, "%4d/%2d/%2d %2d:%2d:%2d -"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_a

    .line 1137
    .end local v8           #i:I
    .end local v19           #wmDrmRight:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    .end local v20           #wmdrmArrayRightsObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsPlayReadyDrm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1139
    new-instance v9, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;

    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    invoke-direct {v9}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;-><init>()V

    .line 1141
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_c

    .line 1143
    new-instance v15, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v15}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    .line 1144
    .local v15, prManager:Landroid/playready/playreadymanager/PlayReadyManager;
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    move-object/from16 v21, v5

    .line 1146
    goto/16 :goto_0

    .line 1147
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->PrintRights()V

    .line 1150
    .end local v15           #prManager:Landroid/playready/playreadymanager/PlayReadyManager;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_f

    .line 1152
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070056

    aput v23, v21, v22

    .line 1153
    const-string v21, "%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-wide v24, v24, v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1163
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumDates:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_e

    .line 1165
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070055

    aput v23, v21, v22

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "PlayReadyLicense Availble: start date"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1171
    .local v3, date:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v21, "dd MMM. yyyy, HH:mm:ss z"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v4, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1175
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "PlayReadyLicense Availble: end date"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayReadyDrmConstraintInfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1179
    .restart local v3       #date:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v21, "dd MMM. yyyy, HH:mm:ss z"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1180
    .restart local v4       #dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1184
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    :cond_e
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1157
    :cond_f
    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x7f070053

    aput v23, v21, v22

    goto/16 :goto_b

    .line 1085
    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .end local p1
    .restart local v6       #drmManager:Landroid/drm/mobile2/OMADRMManager;
    .restart local v8       #i:I
    .restart local v10       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v11       #j:I
    .restart local v12       #omaDrmConstInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .restart local v16       #rightPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;>;"
    .restart local v17       #rights:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/drm/mobile2/OMADRMConstraintsInfo$DrmRights;>;"
    :catch_3
    move-exception v21

    move-object/from16 v7, v21

    move-object v9, v10

    .end local v10           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    goto/16 :goto_8

    .line 1083
    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v10       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    :catch_4
    move-exception v21

    move-object/from16 v7, v21

    move-object v9, v10

    .end local v10           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    goto/16 :goto_7

    .line 1081
    .end local v9           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v10       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    :catch_5
    move-exception v21

    move-object/from16 v7, v21

    move-object v9, v10

    .end local v10           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v9       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    goto/16 :goto_5

    .line 1012
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1028
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPopupString(I)Ljava/lang/String;
    .locals 12
    .parameter "strType"

    .prologue
    .line 760
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v8, "getPopupString - start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v4, 0x0

    .line 762
    .local v4, str:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 763
    .local v2, remainedCnt:J
    const-wide/16 v5, -0x1

    .line 764
    .local v5, totalCnt:J
    const-wide/16 v0, -0x1

    .line 766
    .local v0, curCnt:J
    packed-switch p1, :pswitch_data_0

    .line 843
    :cond_0
    :goto_0
    return-object v4

    .line 770
    :pswitch_0
    iget-boolean v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    if-eqz v7, :cond_1

    .line 772
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getOMARemainedCnt(Ljava/lang/String;)I

    move-result v7

    int-to-long v2, v7

    .line 775
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPopupString() - remainedCnt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-wide/16 v7, 0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_2

    .line 779
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f07003f

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 780
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070046

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 781
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 783
    :cond_2
    const-wide/16 v7, 0x2

    cmp-long v7, v2, v7

    if-nez v7, :cond_0

    .line 785
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070040

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 786
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 792
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070042

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 793
    goto/16 :goto_0

    .line 796
    :pswitch_2
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f07004e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 797
    goto/16 :goto_0

    .line 801
    :pswitch_3
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070043

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 802
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070046

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 803
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070044

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 805
    goto/16 :goto_0

    .line 808
    :pswitch_4
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070045

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 809
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070046

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 811
    goto/16 :goto_0

    .line 815
    :pswitch_5
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f07004c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 816
    goto/16 :goto_0

    .line 819
    :pswitch_6
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivXcurCnt(Ljava/lang/String;)J

    move-result-wide v0

    .line 820
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivXtotalCnt(Ljava/lang/String;)J

    move-result-wide v5

    .line 821
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPopupString() - totalCnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curCnt :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070047

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 824
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070046

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 825
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070048

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 826
    goto/16 :goto_0

    .line 830
    :pswitch_7
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivXcurCnt(Ljava/lang/String;)J

    move-result-wide v0

    .line 831
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivXtotalCnt(Ljava/lang/String;)J

    move-result-wide v5

    .line 832
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPopupString() - totalCnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curCnt :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070047

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 834
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f070046

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 835
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v8, 0x7f07004d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 837
    goto/16 :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isWMDRM()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    return v0
.end method

.method public launchBrowser()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 941
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v3, "launchBrowser() start "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :try_start_0
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 948
    .local v1, manager:Landroid/drm/mobile2/OMADRMManager;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/drm/mobile2/OMADRMManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 951
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v3, "launchBrowser() fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v5

    .line 963
    .end local v1           #manager:Landroid/drm/mobile2/OMADRMManager;
    :goto_0
    return v2

    .line 955
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 956
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    move v2, v5

    .line 957
    goto :goto_0

    .line 958
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 959
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v5

    .line 960
    goto :goto_0

    .line 963
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #manager:Landroid/drm/mobile2/OMADRMManager;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 178
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;

    .line 181
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsOMADrm:Z

    .line 182
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsWMDrm:Z

    .line 183
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsDivx:Z

    .line 185
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mIsFL:Z

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    .line 188
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 189
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mWMDrmConstraintInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;

    .line 190
    iput v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    .line 191
    iput v2, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    .line 192
    return-void
.end method

.method public setDrmMsgPopup(I)I
    .locals 8
    .parameter "playerType"

    .prologue
    const/16 v7, 0x1e

    .line 849
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDrmMsgPopup() start. mPlayerType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayerType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    if-nez v4, :cond_0

    move v4, v7

    .line 936
    :goto_0
    return v4

    .line 856
    :cond_0
    iput p1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayerType:I

    .line 858
    iget v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPlayerType:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v4, v7

    .line 936
    goto :goto_0

    .line 865
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsValidOMADrm(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 867
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "setDrmMsgPopup() - the drm file is Valid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, drmManager:Landroid/drm/mobile2/OMADRMManager;
    const/4 v2, 0x0

    .line 872
    .local v2, info:Landroid/drm/mobile2/DrmBestRights;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    .line 876
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/drm/mobile2/OMADRMManager;->getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 887
    :goto_2
    iget v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2

    .line 889
    iget v3, v2, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    .line 890
    .local v3, remainedCnt:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDrmMsgPopup() - remained count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 894
    const/16 v4, 0x1f

    goto :goto_0

    .line 878
    .end local v3           #remainedCnt:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 880
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_2

    .line 882
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 884
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #remainedCnt:I
    :cond_1
    move v4, v7

    .line 898
    goto :goto_0

    .line 901
    .end local v3           #remainedCnt:I
    :cond_2
    iget v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 903
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!! info.orgIntervalTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/drm/mobile2/DrmBestRights;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!! info.curIntervalTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/drm/mobile2/DrmBestRights;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v4, v2, Landroid/drm/mobile2/DrmBestRights;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v4}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/drm/mobile2/DrmBestRights;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v5}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 909
    const/16 v4, 0x22

    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 912
    goto/16 :goto_0

    :cond_4
    move v4, v7

    .line 916
    goto/16 :goto_0

    .line 922
    .end local v0           #drmManager:Landroid/drm/mobile2/OMADRMManager;
    .end local v2           #info:Landroid/drm/mobile2/DrmBestRights;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v5, "setDrmMsgPopup() - the drm file is Invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget v4, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mDrmType:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 927
    :pswitch_2
    const/16 v4, 0x20

    goto/16 :goto_0

    .line 931
    :pswitch_3
    const/16 v4, 0x21

    goto/16 :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 924
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public updateOMADRMInfo(Ljava/lang/String;)Z
    .locals 10
    .parameter "filePath"

    .prologue
    const/16 v7, 0x10

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 613
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v6, "updateDRMInfo() - start."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-nez p1, :cond_0

    .line 617
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v6, "updateDRMInfo() - file path is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 687
    :goto_0
    return v5

    .line 621
    :cond_0
    const/4 v4, 0x0

    .line 622
    .local v4, type:I
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mPath:Ljava/lang/String;

    .line 624
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 625
    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ge v2, v5, :cond_1

    .line 626
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;

    .line 630
    :goto_1
    const/4 v0, 0x0

    .line 631
    .local v0, drmManager:Landroid/drm/mobile2/OMADRMManager;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    .line 637
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v5}, Landroid/drm/mobile2/OMADRMManager;->getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintInfo:Landroid/drm/mobile2/DrmBestRights;
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintInfo:Landroid/drm/mobile2/DrmBestRights;

    if-nez v5, :cond_2

    .line 650
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    const-string v6, "mConstraintInfo is null. right is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 651
    goto :goto_0

    .line 628
    .end local v0           #drmManager:Landroid/drm/mobile2/OMADRMManager;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mContext:Landroid/content/Context;

    const v6, 0x7f07002f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mFilename:Ljava/lang/String;

    goto :goto_1

    .line 639
    .restart local v0       #drmManager:Landroid/drm/mobile2/OMADRMManager;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 641
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_2

    .line 643
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 645
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 655
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v4, v5, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    .line 657
    if-ne v8, v4, :cond_5

    const/16 v5, 0xb

    iput v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    .line 666
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDRMInfo() - this file Constraints type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, p1, v5}, Landroid/drm/mobile2/OMADRMManager;->getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;

    move-result-object v3

    .line 672
    .local v3, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v3, :cond_4

    .line 673
    iget-boolean v5, v3, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z

    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z
    :try_end_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 686
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDRMInfo() - this file send type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mbShare:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 687
    goto/16 :goto_0

    .line 658
    .end local v3           #options:Landroid/drm/mobile2/Drm2Options;
    :cond_5
    if-nez v4, :cond_6

    const/16 v5, 0x11

    iput v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    goto :goto_3

    .line 659
    :cond_6
    const/4 v5, 0x2

    if-ne v5, v4, :cond_7

    const/16 v5, 0xd

    iput v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    goto :goto_3

    .line 660
    :cond_7
    const/4 v5, 0x4

    if-ne v5, v4, :cond_8

    const/16 v5, 0xc

    iput v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    goto :goto_3

    .line 661
    :cond_8
    const/16 v5, 0x8

    if-ne v5, v4, :cond_9

    const/16 v5, 0xe

    iput v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    goto :goto_3

    .line 662
    :cond_9
    if-ne v7, v4, :cond_a

    const/16 v5, 0xf

    iput v5, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    goto :goto_3

    .line 663
    :cond_a
    const/16 v5, 0x20

    if-ne v5, v4, :cond_3

    iput v7, p0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->mConstraintType:I

    goto :goto_3

    .line 675
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 677
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    move v5, v9

    .line 678
    goto/16 :goto_0

    .line 680
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 682
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v9

    .line 683
    goto/16 :goto_0
.end method
