.class public Lcom/sec/android/app/camera/CropImage;
.super Lcom/sec/android/app/camera/MonitoredActivity;
.source "CropImage.java"


# instance fields
.field private mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field public mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field public mBlinkRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/sec/android/app/camera/HighlightView;

.field public mFromApp:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Lcom/sec/android/app/camera/gallery/IImage;

.field private mImageView:Lcom/sec/android/app/camera/CropImageView;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field public mRectCrop:Z

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field private mSetWallpaper:Z

.field mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/camera/MonitoredActivity;-><init>()V

    .line 66
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 68
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    .line 74
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 76
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 98
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 532
    new-instance v0, Lcom/sec/android/app/camera/CropImage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CropImage$7;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    return v0
.end method

.method private onSaveClicked()V
    .locals 25

    .prologue
    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 275
    .local v20, myExtras:Landroid/os/Bundle;
    if-eqz v20, :cond_2

    const-string v5, "attach-video"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    const-string v5, "CropImage"

    const-string v6, "Attach = Video"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "inline-data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 310
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    move-object v5, v0

    if-nez v5, :cond_6

    .line 414
    :cond_1
    :goto_1
    return-void

    .line 280
    :cond_2
    if-eqz v20, :cond_3

    const-string v5, "return-uri"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    move-object v5, v0

    if-nez v5, :cond_3

    .line 281
    const-string v5, "CropImage"

    const-string v6, "Crop = no, Return = uri"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v17, extras:Landroid/os/Bundle;
    const-string v5, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "inline-data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_0

    .line 287
    .end local v17           #extras:Landroid/os/Bundle;
    :cond_3
    if-eqz v20, :cond_4

    const-string v5, "return-data"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    move-object v5, v0

    if-nez v5, :cond_4

    .line 288
    const-string v5, "CropImage"

    const-string v6, "Crop = no, Return = data"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 290
    .restart local v17       #extras:Landroid/os/Bundle;
    const-string v5, "bitmap-data"

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "inline-data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 294
    .end local v17           #extras:Landroid/os/Bundle;
    :cond_4
    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    move-object v5, v0

    if-nez v5, :cond_5

    .line 295
    const-string v5, "CropImage"

    const-string v6, "Crop = no, Return = specified uri"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 297
    .restart local v17       #extras:Landroid/os/Bundle;
    const-string v5, "specify-data"

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "inline-data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 301
    .end local v17           #extras:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 302
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 314
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 315
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move v5, v0

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move v5, v0

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    move v5, v0

    if-nez v5, :cond_9

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move v6, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 326
    .local v6, croppedImage:Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 328
    .local v13, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v23

    .line 329
    .local v23, srcRect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move v9, v0

    invoke-direct {v14, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    .local v14, dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v15, v5, 0x2

    .line 332
    .local v15, dx:I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v16, v5, 0x2

    .line 335
    .local v16, dy:I
    const/4 v5, 0x0

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x0

    move v0, v7

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, v23

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 338
    const/4 v5, 0x0

    neg-int v7, v15

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v14, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v7, 0x0

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v23

    move-object v3, v14

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CropImageView;->clear()V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 388
    .end local v15           #dx:I
    .end local v16           #dy:I
    .end local v23           #srcRect:Landroid/graphics/Rect;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    move-object v5, v0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    move-object v5, v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/camera/CropImageView;->center(ZZ)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    move-object v5, v0

    iget-object v5, v5, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 393
    if-eqz v20, :cond_c

    const-string v5, "data"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v5, "return-data"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 394
    :cond_8
    const-string v5, "CropImage"

    const-string v7, "Crop = yes, Return = data"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 396
    .restart local v17       #extras:Landroid/os/Bundle;
    const-string v5, "data"

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 397
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    .end local v6           #croppedImage:Landroid/graphics/Bitmap;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "inline-data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_1

    .line 347
    .end local v13           #canvas:Landroid/graphics/Canvas;
    .end local v14           #dstRect:Landroid/graphics/Rect;
    .end local v17           #extras:Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v22

    .line 349
    .local v22, r:Landroid/graphics/Rect;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 350
    .local v24, width:I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 354
    .local v18, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    move v5, v0

    if-eqz v5, :cond_b

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v18

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 359
    .restart local v6       #croppedImage:Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    .restart local v13       #canvas:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    move v1, v5

    move v2, v7

    move/from16 v3, v24

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 361
    .restart local v14       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v7, 0x0

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v22

    move-object v3, v14

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CropImageView;->clear()V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 367
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    move v5, v0

    if-eqz v5, :cond_a

    .line 373
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 374
    .local v12, c:Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 375
    .local v21, p:Landroid/graphics/Path;
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move/from16 v0, v24

    int-to-float v0, v0

    move v8, v0

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v21

    move v1, v5

    move v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 377
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, v12

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 378
    const/4 v5, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v5, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 382
    .end local v12           #c:Landroid/graphics/Canvas;
    .end local v21           #p:Landroid/graphics/Path;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    move v5, v0

    if-eqz v5, :cond_7

    .line 383
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move v8, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    move v9, v0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/sec/android/app/camera/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_2

    .line 354
    .end local v6           #croppedImage:Landroid/graphics/Bitmap;
    .end local v13           #canvas:Landroid/graphics/Canvas;
    .end local v14           #dstRect:Landroid/graphics/Rect;
    :cond_b
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_3

    .line 401
    .end local v18           #height:I
    .end local v22           #r:Landroid/graphics/Rect;
    .end local v24           #width:I
    .restart local v6       #croppedImage:Landroid/graphics/Bitmap;
    .restart local v13       #canvas:Landroid/graphics/Canvas;
    .restart local v14       #dstRect:Landroid/graphics/Rect;
    :cond_c
    const-string v5, "CropImage"

    const-string v7, "Crop = yes, Return = specified uri"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object v11, v6

    .line 403
    .local v11, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    move v5, v0

    if-eqz v5, :cond_d

    const v5, 0x7f0700dc

    move/from16 v19, v5

    .line 406
    .local v19, msdId:I
    :goto_4
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .end local v6           #croppedImage:Landroid/graphics/Bitmap;
    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/camera/CropImage$5;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage$5;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 403
    .end local v19           #msdId:I
    .restart local v6       #croppedImage:Landroid/graphics/Bitmap;
    :cond_d
    const v5, 0x7f07000e

    move/from16 v19, v5

    goto :goto_4
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 26
    .parameter "croppedImage"

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 418
    const/16 v24, 0x0

    .line 420
    .local v24, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v24

    .line 421
    if-eqz v24, :cond_0

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    move-object v4, v0

    const/16 v5, 0x4b

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 430
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v20, extras:Landroid/os/Bundle;
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 493
    .end local v20           #extras:Landroid/os/Bundle;
    .end local v24           #outputStream:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    move-object/from16 v14, p1

    .line 494
    .local v14, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Lcom/sec/android/app/camera/CropImage$6;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage$6;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 502
    return-void

    .line 424
    .end local v14           #b:Landroid/graphics/Bitmap;
    .restart local v24       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    .line 426
    .local v18, ex:Ljava/io/IOException;
    :try_start_1
    const-string v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    .end local v18           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 433
    .end local v24           #outputStream:Ljava/io/OutputStream;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    move v4, v0

    if-eqz v4, :cond_3

    .line 435
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 436
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 437
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 438
    .local v17, e:Ljava/io/IOException;
    const-string v4, "CropImage"

    const-string v5, "Failed to set wallpaper."

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    goto :goto_1

    .line 442
    .end local v17           #e:Ljava/io/IOException;
    :cond_3
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 443
    .restart local v20       #extras:Landroid/os/Bundle;
    const-string v4, "rect"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    move-object v4, v0

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v23, oldPath:Ljava/io/File;
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v16, directory:Ljava/io/File;
    const/16 v25, 0x0

    .line 449
    .local v25, x:I
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 450
    .local v21, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "."

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v21

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 452
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v15, candidate:Ljava/lang/StringBuilder;
    :cond_4
    add-int/lit8 v25, v25, 0x1

    .line 457
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v4, "/"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v4, "-"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const-string v4, ".jpg"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    new-instance v4, Ljava/io/File;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    .line 464
    .local v19, exists:Z
    if-nez v19, :cond_4

    .line 470
    const/4 v4, 0x1

    :try_start_3
    new-array v13, v4, [I

    .line 471
    .local v13, degree:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    move-object v5, v0

    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImage;->getTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    move-object v6, v0

    invoke-interface {v6}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v4 .. v13}, Lcom/sec/android/app/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v22

    .line 481
    .local v22, newUri:Landroid/net/Uri;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 482
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 486
    .end local v13           #degree:[I
    .end local v22           #newUri:Landroid/net/Uri;
    :catch_2
    move-exception v4

    move-object/from16 v18, v4

    .line 489
    .local v18, ex:Ljava/lang/Exception;
    const-string v4, "CropImage"

    const-string v5, "store image fail, continue anyway"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CropImage$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CropImage$4;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public getBlinkRectCnt()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->requestWindowFeature(I)Z

    .line 106
    const v8, 0x7f030012

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->setContentView(I)V

    .line 108
    const v8, 0x7f0a006c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/camera/CropImageView;

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    .line 110
    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->showStorageToast(Landroid/app/Activity;)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 113
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 115
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 116
    const-string v8, "circleCrop"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 117
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 118
    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 119
    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 124
    :cond_0
    :goto_0
    const-string v8, "output"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 125
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v8, :cond_5

    .line 126
    const-string v8, "outputFormat"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, outputFormatString:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 128
    invoke-static {v6}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 134
    .end local v6           #outputFormatString:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v8, "data"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 135
    const-string v8, "aspectX"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 136
    const-string v8, "aspectY"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 137
    const-string v8, "outputX"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    .line 138
    const-string v8, "outputY"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    .line 139
    const-string v8, "scale"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    .line 140
    const-string v8, "scaleUpIfNeeded"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 145
    const-string v8, "attach-video"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 146
    const-string v8, "fromApp"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 147
    const-string v8, "blink-rect"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 150
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    .line 151
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 152
    .local v7, target:Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 153
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v8, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 154
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-eqz v8, :cond_3

    .line 160
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/sec/android/app/camera/gallery/IImage;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v7           #target:Landroid/net/Uri;
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_6

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 223
    :goto_3
    return-void

    .line 120
    :cond_4
    const-string v8, "rectCrop"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 121
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    goto/16 :goto_0

    .line 132
    :cond_5
    const-string v8, "setWallpaper"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    goto/16 :goto_1

    .line 161
    .restart local v7       #target:Landroid/net/Uri;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 162
    .local v3, ex:Ljava/lang/Exception;
    const-string v8, "CropImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open Thumbnail : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_2

    .line 174
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v7           #target:Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 176
    const v8, 0x7f0a006f

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/camera/CropImage$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$1;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v8, 0x7f0a006e

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/camera/CropImage$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$2;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->startFaceDetection()V

    .line 195
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    if-eqz v8, :cond_7

    .line 196
    const v8, 0x7f0a006d

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 197
    .local v2, button:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    new-instance v8, Lcom/sec/android/app/camera/CropImage$3;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/camera/CropImage$3;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/content/Intent;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :goto_4
    const v8, 0x7f0a006e

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 216
    .local v1, btnSave:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    const v8, 0x7f0a0070

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 222
    .local v0, btnGallery:Landroid/widget/Button;
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 211
    .end local v0           #btnGallery:Landroid/widget/Button;
    .end local v1           #btnSave:Landroid/widget/Button;
    .end local v2           #button:Landroid/widget/Button;
    :cond_7
    const v8, 0x7f0a006d

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 212
    .restart local v2       #button:Landroid/widget/Button;
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 524
    const-string v0, "CropImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 529
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onDestroy()V

    .line 530
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 517
    const-string v0, "CropImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onPause()V

    .line 520
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 506
    const-string v0, "CropImage"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 512
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onResume()V

    .line 513
    return-void
.end method