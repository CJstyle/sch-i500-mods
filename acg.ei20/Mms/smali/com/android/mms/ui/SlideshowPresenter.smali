.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# static fields
.field public static currentSlide:I


# instance fields
.field private mFullScreenText:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mHasAttachment:Z

.field private mHasAudio:Z

.field private mHasText:Z

.field protected mHeightTransformRatio:F

.field protected mLocation:I

.field private mMovie:Landroid/graphics/Movie;

.field protected final mSlideNumber:I

.field private mTopText:Z

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F

.field private m_model:Lcom/android/mms/model/SlideModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->m_model:Lcom/android/mms/model/SlideModel;

    .line 94
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 88
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 89
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowPresenter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    return v0
.end method

.method private getCurrentSlideIndex(I)I
    .locals 2
    .parameter "currentSlideTime"

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 563
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    if-ge v0, v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    sub-int/2addr p1, v1

    .line 565
    const/16 v1, -0x384

    if-ge p1, v1, :cond_0

    .line 566
    add-int/lit8 v1, v0, 0x1

    .line 569
    :goto_1
    return v1

    .line 563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    goto :goto_1
.end method

.method private getHeightTransformRatio(II)F
    .locals 2
    .parameter "height"
    .parameter "layoutHeight"

    .prologue
    .line 118
    if-lez p1, :cond_0

    .line 119
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getWidthTransformRatio(II)F
    .locals 2
    .parameter "width"
    .parameter "layoutWidth"

    .prologue
    .line 111
    if-lez p1, :cond_0

    .line 112
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private transformHeight(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 129
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 125
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getCurSlideIndex()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTotSlideNumber()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    return v0
.end method

.method public goBackward()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 467
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 468
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 469
    sget v0, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    .line 471
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 3

    .prologue
    .line 475
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 476
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 477
    sget v0, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    .line 479
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 4
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    .line 485
    .local v1, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v2, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    instance-of v2, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v2, :cond_3

    .line 488
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 495
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 513
    :cond_3
    instance-of v2, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v2, :cond_5

    .line 514
    instance-of v2, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_4

    .line 515
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 533
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/MediaModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 553
    :cond_5
    instance-of v2, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 135
    return-void
.end method

.method public present(Z)V
    .locals 0
    .parameter "firstSlide"

    .prologue
    .line 140
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 4
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    if-eqz p3, :cond_0

    .line 228
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 232
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 233
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 235
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 236
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 237
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 238
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 239
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 18
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v10

    .line 305
    .local v10, imageViewTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    move v15, v0

    if-nez v15, :cond_0

    .line 306
    const/4 v10, 0x0

    .line 308
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, contentType:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 310
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 312
    :cond_1
    if-eqz p4, :cond_3

    .line 315
    const-string v15, "image/gif"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 316
    const/4 v11, 0x0

    .line 317
    .local v11, is:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 319
    .local v12, is2:Ljava/io/ByteArrayInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 320
    if-eqz v11, :cond_2

    .line 321
    const/4 v14, 0x0

    .line 322
    .local v14, streamSize:I
    invoke-virtual {v11}, Ljava/io/InputStream;->markSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 324
    .local v7, canMark:Z
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v14

    .line 328
    :goto_0
    if-eqz v7, :cond_6

    .line 329
    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v11, v15}, Ljava/io/InputStream;->mark(I)V

    .line 338
    :goto_1
    invoke-static {v11}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    move-object v15, v0

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Movie;->duration()I

    move-result v15

    if-lez v15, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 354
    .end local v7           #canMark:Z
    .end local v14           #streamSize:I
    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    .line 356
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 368
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #is2:Ljava/io/ByteArrayInputStream;
    :cond_3
    :goto_3
    const-string v15, "image/gif"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    move-object v15, v0

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Movie;->duration()I

    move-result v15

    if-lez v15, :cond_c

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v5

    .line 370
    .local v5, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v15, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v5, v15, :cond_a

    .line 371
    invoke-interface/range {p1 .. p1}, Lcom/android/mms/ui/SlideViewInterface;->startMovie()V

    .line 378
    :cond_4
    :goto_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move v15, v0

    if-eqz v15, :cond_5

    .line 379
    check-cast p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p1
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v17

    move-object/from16 v0, p1

    move v1, v15

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setMovieRegion(IIII)V

    .line 397
    .end local v5           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    .end local p4
    :cond_5
    :goto_5
    return-void

    .line 332
    .restart local v7       #canMark:Z
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v12       #is2:Ljava/io/ByteArrayInputStream;
    .restart local v14       #streamSize:I
    .restart local p1
    .restart local p4
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 333
    .local v6, array:[B
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 334
    .end local v12           #is2:Ljava/io/ByteArrayInputStream;
    .local v13, is2:Ljava/io/ByteArrayInputStream;
    move-object v11, v13

    .line 335
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    .line 336
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/InputStream;->mark(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v12, v13

    .end local v13           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v12       #is2:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .line 347
    .end local v6           #array:[B
    :cond_7
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 350
    .end local v7           #canMark:Z
    .end local v14           #streamSize:I
    :catch_0
    move-exception v15

    move-object v9, v15

    .line 352
    .local v9, e:Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string v15, "Mms/SlideshowPresenter"

    const-string v16, "IOException caught while opening or reading stream in presentImage"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 354
    if-eqz v11, :cond_3

    .line 356
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 357
    :catch_1
    move-exception v9

    .line 359
    const-string v15, "Mms/SlideshowPresenter"

    const-string v16, "IOException caught while closing stream"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 357
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 359
    .restart local v9       #e:Ljava/io/IOException;
    const-string v15, "Mms/SlideshowPresenter"

    const-string v16, "IOException caught while closing stream"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 354
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_7
    if-eqz v11, :cond_8

    .line 356
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 360
    :cond_8
    :goto_8
    throw v15

    .line 357
    :catch_3
    move-exception v9

    .line 359
    .restart local v9       #e:Ljava/io/IOException;
    const-string v16, "Mms/SlideshowPresenter"

    const-string v17, "IOException caught while closing stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 364
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #is2:Ljava/io/ByteArrayInputStream;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_3

    .line 372
    .restart local v5       #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_a
    sget-object v15, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v5, v15, :cond_b

    .line 373
    invoke-interface/range {p1 .. p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseMovie()V

    goto/16 :goto_4

    .line 374
    :cond_b
    sget-object v15, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v5, v15, :cond_4

    .line 375
    invoke-interface/range {p1 .. p1}, Lcom/android/mms/ui/SlideViewInterface;->stopMovie()V

    goto/16 :goto_4

    .line 386
    .end local v5           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move v15, v0

    if-eqz v15, :cond_d

    .line 387
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object/from16 p4, v0

    .end local p4
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v17

    move-object/from16 v0, p4

    move v1, v15

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 392
    const/4 v15, 0x1

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/model/ImageModel;->setVisible(Z)V

    .line 394
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->isVisible()Z

    move-result v15

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    goto/16 :goto_5

    .line 325
    .restart local v7       #canMark:Z
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v12       #is2:Ljava/io/ByteArrayInputStream;
    .restart local v14       #streamSize:I
    .restart local p4
    :catch_4
    move-exception v15

    goto/16 :goto_0

    .line 354
    .end local v12           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v6       #array:[B
    .restart local v13       #is2:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v15

    move-object v12, v13

    .end local v13           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v12       #is2:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_7

    .line 350
    .end local v12           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v13       #is2:Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v15

    move-object v9, v15

    move-object v12, v13

    .end local v13           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v12       #is2:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_6
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 215
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 219
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 10
    .parameter "view"
    .parameter "model"

    .prologue
    .line 147
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->m_model:Lcom/android/mms/model/SlideModel;

    if-ne v6, p2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-nez v6, :cond_1

    .line 148
    :cond_0
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 149
    :cond_1
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter;->m_model:Lcom/android/mms/model/SlideModel;

    .line 150
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 151
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    .line 155
    :goto_0
    instance-of v6, p1, Lcom/android/mms/ui/SlideView;

    if-eqz v6, :cond_3

    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/SlideView;

    move-object v1, v0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v8

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/mms/ui/SlideView;->regionsPresent(ZZZZ)V

    .line 159
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    .line 160
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    .line 162
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 163
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    .line 169
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 170
    .local v4, media:Lcom/android/mms/model/MediaModel;
    instance-of v6, v4, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v6, :cond_a

    .line 173
    iget-object v6, p2, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v6, v6, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 174
    iget v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    iget v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_5

    .line 175
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    .line 178
    :cond_5
    check-cast v4, Lcom/android/mms/model/RegionMediaModel;

    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 183
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 184
    .local v2, e:Landroid/drm/mobile2/OMADRMException;
    const-string v6, "Mms/SlideshowPresenter"

    invoke-virtual {v2}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    iget-object v6, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v8, 0x7f090029

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 197
    .end local v2           #e:Landroid/drm/mobile2/OMADRMException;
    :cond_6
    :goto_3
    iget v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 198
    .local v5, totalSlide:I
    instance-of v6, p1, Lcom/android/mms/ui/SlideView;

    if-eqz v6, :cond_7

    .line 199
    iget v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    sget v7, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    if-eq v6, v7, :cond_7

    .line 200
    sget v6, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    iput v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 202
    :cond_7
    iget v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v1, v6, 0x1

    .line 203
    .local v1, currentSlide:I
    invoke-interface {p1, v1, v5}, Lcom/android/mms/ui/SlideViewInterface;->setPageNumber(II)V

    .line 205
    return-void

    .line 153
    .end local v1           #currentSlide:I
    .end local v5           #totalSlide:I
    :cond_8
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    goto/16 :goto_0

    .line 165
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    goto :goto_1

    .line 179
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    :cond_a
    :try_start_1
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    check-cast v4, Lcom/android/mms/model/AudioModel;

    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    :try_end_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 188
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 190
    .local v2, e:Ljava/io/IOException;
    const-string v6, "Mms/SlideshowPresenter"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    iget-object v6, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v8, 0x7f090029

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 8
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 248
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    if-eqz v1, :cond_4

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, textViewTop:I
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->getHeight()I

    move-result v5

    .line 267
    .local v5, textViewHeight:I
    :goto_0
    if-eqz p4, :cond_1

    .line 269
    const/4 v7, 0x0

    .line 270
    .local v7, showAttachment:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v1, :cond_0

    .line 271
    const/4 v7, 0x1

    .line 273
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v1, v2, v7, v4}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 276
    .end local v7           #showAttachment:Z
    :cond_1
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_2

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v1, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    iget-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    invoke-interface/range {v1 .. v6}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIIIZ)V

    .line 286
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v1, :cond_3

    .line 287
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/mms/model/TextModel;->setVisible(Z)V

    .line 289
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 290
    return-void

    .line 256
    .end local v3           #textViewTop:I
    .end local v5           #textViewHeight:I
    :cond_4
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    .line 257
    .restart local v3       #textViewTop:I
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    .restart local v5       #textViewHeight:I
    goto :goto_0
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 7
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    .line 422
    .local v2, videoViewTop:I
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    if-nez v3, :cond_0

    .line 423
    const/4 v2, 0x0

    .line 426
    :cond_0
    if-eqz p4, :cond_1

    .line 427
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v3, v4, v5}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 430
    :cond_1
    instance-of v3, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v3, :cond_2

    .line 431
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v3, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v5

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v6

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 437
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isVisible()Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 439
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v1

    .line 440
    .local v1, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v3, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v3, :cond_4

    .line 441
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 449
    :cond_3
    :goto_0
    return-void

    .line 442
    :cond_4
    sget-object v3, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v3, :cond_5

    .line 443
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_0

    .line 444
    :cond_5
    sget-object v3, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v3, :cond_6

    .line 445
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_0

    .line 446
    :cond_6
    sget-object v3, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v3, :cond_3

    .line 447
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_0
.end method

.method public resetLocation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 462
    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 463
    sput v0, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    .line 464
    return-void
.end method

.method public setLocation(I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 452
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 453
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    sput v0, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    .line 454
    return-void
.end method

.method public streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 400
    new-array v0, p2, [B

    .line 402
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-object v0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
