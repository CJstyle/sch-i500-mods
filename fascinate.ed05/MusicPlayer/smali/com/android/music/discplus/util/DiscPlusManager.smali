.class public Lcom/android/music/discplus/util/DiscPlusManager;
.super Ljava/lang/Object;
.source "DiscPlusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    }
.end annotation


# static fields
.field private static final CHECKIMAGE_EMPTY:I = 0x1

.field private static final CHECKIMAGE_FAILED:I = 0x0

.field private static final CHECKIMAGE_LOADED:I = 0x2

.field public static SCOPE_RANGE:I

.field static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/music/discplus/util/DiscPlusManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

.field private mDiscInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscView:Lcom/android/music/discplus/view/DiscView;

.field private mImageLoadStop:Z

.field private mMediaScannerRunCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/discplus/util/DiscPlusManager;->mInstance:Lcom/android/music/discplus/util/DiscPlusManager;

    .line 38
    const/16 v0, 0x100

    sput v0, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    .line 33
    iput-boolean v2, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mMediaScannerRunCheck:Z

    .line 99
    new-instance v1, Lcom/android/music/discplus/util/DiscPlusManager$2;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/util/DiscPlusManager$2;-><init>(Lcom/android/music/discplus/util/DiscPlusManager;)V

    iput-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    .line 170
    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    .line 175
    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    iput-boolean v2, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    .line 177
    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 178
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscViewDataUpdateListener(Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/util/DiscPlusManager;)Lcom/android/music/discplus/view/DiscView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/music/discplus/util/DiscPlusManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/music/discplus/util/DiscPlusManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkImageLoaded(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 446
    iget-boolean v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, 0x0

    .line 458
    .end local p0
    :goto_0
    return v1

    .line 451
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 452
    const/4 v1, 0x1

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 455
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkImageLoaded Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 182
    const-class v0, Lcom/android/music/discplus/util/DiscPlusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusManager;->mInstance:Lcom/android/music/discplus/util/DiscPlusManager;

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/util/DiscPlusManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/music/discplus/util/DiscPlusManager;->mInstance:Lcom/android/music/discplus/util/DiscPlusManager;

    .line 186
    :cond_0
    sget-object v1, Lcom/android/music/discplus/util/DiscPlusManager;->mInstance:Lcom/android/music/discplus/util/DiscPlusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private deleteImage(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 426
    iget-boolean v2, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    if-eqz v2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 430
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    .line 431
    .local v1, info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    .line 432
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isDefault:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1           #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 436
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteImage Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadImage(I)V
    .locals 26
    .parameter "position"

    .prologue
    .line 303
    const/4 v14, 0x0

    .line 304
    .local v14, image:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const/16 v16, 0x0

    .line 311
    .local v16, info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    check-cast v16, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .restart local v16       #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isUpdate:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 325
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->resStrIds:J

    move-wide/from16 v18, v0

    .line 326
    .local v18, strId:J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-eqz v22, :cond_2

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v9

    .line 329
    .local v9, dataPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    if-eqz v9, :cond_2

    .line 331
    move-wide/from16 v12, v18

    .line 332
    .local v12, id:J
    move-object v0, v9

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    move/from16 v21, v0

    .line 334
    .local v21, type:I
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 336
    iget-object v8, v9, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 337
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 338
    const/4 v15, 0x0

    .line 339
    .local v15, imagePath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 340
    .local v5, _data:Ljava/lang/String;
    monitor-enter v8

    .line 341
    :try_start_1
    move-object v0, v8

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 342
    const-string v22, "thumbnail_uri"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 343
    const-string v22, "_data"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 344
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    const/16 v20, 0x0

    .line 347
    .local v20, temp:Landroid/graphics/Bitmap;
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-lez v22, :cond_5

    .line 349
    if-eqz v15, :cond_4

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    sget v24, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    sget v25, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    invoke-static/range {v22 .. v25}, Lcom/android/music/discplus/util/DiscPlusUtils;->getArtwork2(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 363
    :goto_1
    if-eqz v20, :cond_2

    .line 364
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    .end local v14           #image:Landroid/graphics/drawable/Drawable;
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 407
    .end local v5           #_data:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #dataPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v12           #id:J
    .end local v15           #imagePath:Ljava/lang/String;
    .end local v20           #temp:Landroid/graphics/Bitmap;
    .end local v21           #type:I
    .restart local v14       #image:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isDefault:Z

    .line 408
    if-nez v14, :cond_3

    .line 411
    const/16 v22, 0x1

    :try_start_2
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isDefault:Z

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-static/range {p1 .. p1}, Lcom/android/music/discplus/util/DiscPlusUtils;->getResourceId(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 418
    :cond_3
    :goto_3
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->reloadItemData(I)V

    goto/16 :goto_0

    .line 314
    .end local v16           #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    .end local v18           #strId:J
    :catch_0
    move-exception v22

    move-object/from16 v11, v22

    .line 316
    .local v11, e:Ljava/lang/Exception;
    sget-object v22, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadImage Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v22, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadImage Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 344
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v5       #_data:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #dataPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .restart local v12       #id:J
    .restart local v15       #imagePath:Ljava/lang/String;
    .restart local v16       #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    .restart local v18       #strId:J
    .restart local v21       #type:I
    :catchall_0
    move-exception v22

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v22

    .line 352
    .restart local v20       #temp:Landroid/graphics/Bitmap;
    :cond_4
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/android/music/discplus/util/DiscPlusUtils;->getDefaultPlaylistRsrcID(I)I

    move-result v17

    .line 353
    .local v17, recId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/music/discplus/util/DiscPlusUtils;->getRes(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 354
    goto/16 :goto_1

    .line 358
    .end local v17           #recId:I
    :cond_5
    if-nez v5, :cond_6

    const/16 v22, 0x2

    move/from16 v10, v22

    .line 359
    .local v10, defaultPlayListType:I
    :goto_4
    invoke-static {v10}, Lcom/android/music/discplus/util/DiscPlusUtils;->getDefaultPlaylistRsrcID(I)I

    move-result v17

    .line 360
    .restart local v17       #recId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/music/discplus/util/DiscPlusUtils;->getRes(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v20

    goto/16 :goto_1

    .line 358
    .end local v10           #defaultPlayListType:I
    .end local v17           #recId:I
    :cond_6
    const-string v22, "Music_Default_Playlist"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v10, v22

    goto :goto_4

    .line 371
    .end local v5           #_data:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v15           #imagePath:Ljava/lang/String;
    .end local v20           #temp:Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mMediaScannerRunCheck:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 373
    const/16 v20, 0x0

    .line 374
    .restart local v20       #temp:Landroid/graphics/Bitmap;
    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 376
    const-wide/16 v22, -0x1

    cmp-long v22, v12, v22

    if-nez v22, :cond_9

    .line 378
    iget-object v8, v9, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 379
    .restart local v8       #cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_8

    .line 380
    const-wide/16 v6, 0x0

    .line 381
    .local v6, albumId:J
    monitor-enter v8

    .line 382
    :try_start_4
    move-object v0, v8

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 383
    const-string v22, "album_id"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 384
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    sget v24, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    move-object/from16 v0, v22

    move-wide v1, v6

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/util/DiscPlusUtils;->getArtwork(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 399
    .end local v6           #albumId:J
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_8
    :goto_5
    if-eqz v20, :cond_2

    .line 401
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    .end local v14           #image:Landroid/graphics/drawable/Drawable;
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v14       #image:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 384
    .restart local v6       #albumId:J
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v22

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v22

    .line 391
    .end local v6           #albumId:J
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-wide v0, v12

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/music/discplus/util/DiscPlusUtils;->getRes(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v20

    goto :goto_5

    .line 396
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    sget v24, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    move-object/from16 v0, v22

    move-wide v1, v12

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/util/DiscPlusUtils;->getArtwork(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v20

    goto :goto_5

    .line 413
    .end local v9           #dataPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v12           #id:J
    .end local v20           #temp:Landroid/graphics/Bitmap;
    .end local v21           #type:I
    :catch_1
    move-exception v22

    move-object/from16 v11, v22

    .line 414
    .local v11, e:Ljava/lang/OutOfMemoryError;
    sget-object v22, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadImage OutOfMemoryError"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static setScopeRange(I)V
    .locals 0
    .parameter "range"

    .prologue
    .line 41
    sput p0, Lcom/android/music/discplus/util/DiscPlusManager;->SCOPE_RANGE:I

    .line 42
    return-void
.end method


# virtual methods
.method public changeType()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    .line 191
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->onDataChanged()V

    .line 195
    :cond_1
    return-void
.end method

.method public getAlbumId(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 223
    const/4 v1, -0x1

    .line 224
    .local v1, id:I
    iget-boolean v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    if-eqz v3, :cond_0

    move v2, v1

    .line 236
    .end local v1           #id:I
    .end local p0
    .local v2, id:I
    :goto_0
    return v2

    .line 229
    .end local v2           #id:I
    .restart local v1       #id:I
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    iget-wide v3, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->resStrIds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v3

    :goto_1
    move v2, v1

    .line 236
    .end local v1           #id:I
    .restart local v2       #id:I
    goto :goto_0

    .line 232
    .end local v2           #id:I
    .restart local v1       #id:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 233
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAlbumId Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "position"

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-boolean v4, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 297
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .local v1, bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 281
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    .line 284
    .local v3, info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    iget-boolean v6, v3, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isDefault:Z

    invoke-static {v4, v5, v6}, Lcom/android/music/discplus/util/DiscPlusUtils;->getDiscImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3           #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    :cond_1
    :goto_1
    move-object v1, v0

    .line 297
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 293
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 294
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImage Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getString1(I)Ljava/lang/String;
    .locals 6
    .parameter "position"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, str:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 253
    .end local v1           #str:Ljava/lang/String;
    .end local p0
    .local v2, str:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 246
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->str1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v1

    .line 253
    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_0

    .line 249
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 250
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString1 Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getString2(I)Ljava/lang/String;
    .locals 6
    .parameter "position"

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, str:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 271
    .end local v1           #str:Ljava/lang/String;
    .end local p0
    .local v2, str:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 263
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    iget-object v1, p0, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->str2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v1

    .line 271
    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 267
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString2 Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isManagerStop()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    return v0
.end method

.method public prepareImageload(IILcom/android/music/discplus/view/DiscView$CurrentView;)I
    .locals 8
    .parameter "loadPosition"
    .parameter "curPosition"
    .parameter "curView"

    .prologue
    const/4 v6, 0x1

    .line 499
    iget-boolean v5, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    if-eqz v5, :cond_1

    .line 537
    :cond_0
    :goto_0
    return p1

    .line 504
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/discplus/util/DiscPlusManager;->getCount()I

    move-result v0

    .line 505
    .local v0, count:I
    const/16 v5, 0x32

    if-le v0, v5, :cond_3

    .line 506
    add-int/lit8 v3, p2, 0x19

    .line 507
    .local v3, postDelPosition:I
    const/16 v5, 0x19

    sub-int v4, p2, v5

    .line 508
    .local v4, preDelPosition:I
    rem-int/2addr v3, v0

    .line 510
    :goto_1
    if-gez v4, :cond_2

    .line 512
    add-int/2addr v4, v0

    goto :goto_1

    .line 514
    :cond_2
    rem-int/2addr v4, v0

    .line 515
    sget-object v5, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne p3, v5, :cond_6

    .line 517
    move v2, v3

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 519
    invoke-direct {p0, v2}, Lcom/android/music/discplus/util/DiscPlusManager;->deleteImage(I)V

    .line 520
    if-ne v2, v4, :cond_4

    .line 531
    .end local v2           #i:I
    .end local v3           #postDelPosition:I
    .end local v4           #preDelPosition:I
    :cond_3
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/music/discplus/util/DiscPlusManager;->checkImageLoaded(I)I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 532
    invoke-direct {p0, p1}, Lcom/android/music/discplus/util/DiscPlusManager;->loadImage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    .end local v0           #count:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 535
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/music/discplus/util/DiscPlusManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #postDelPosition:I
    .restart local v4       #preDelPosition:I
    :cond_4
    sub-int v5, v0, v6

    if-ne v2, v5, :cond_5

    .line 523
    const/4 v2, -0x1

    .line 517
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 526
    .end local v2           #i:I
    :cond_6
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/music/discplus/util/DiscPlusManager;->deleteImage(I)V

    .line 527
    invoke-direct {p0, v4}, Lcom/android/music/discplus/util/DiscPlusManager;->deleteImage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setDiscView(Lcom/android/music/discplus/view/DiscView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 199
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    if-nez v3, :cond_3

    .line 200
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mImageLoadStop:Z

    .line 203
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 204
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 205
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    .line 206
    .local v2, info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 209
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 214
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 216
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method public setMediaScannerReceive(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    .line 71
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 77
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    new-instance v1, Lcom/android/music/discplus/util/DiscPlusManager$1;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/util/DiscPlusManager$1;-><init>(Lcom/android/music/discplus/util/DiscPlusManager;)V

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 83
    :cond_0
    iput-boolean v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mMediaScannerRunCheck:Z

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iput-boolean v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mMediaScannerRunCheck:Z

    goto :goto_0

    .line 89
    :cond_3
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    iput-boolean v3, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mMediaScannerRunCheck:Z

    goto :goto_0

    .line 93
    :cond_4
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mMediaScannerRunCheck:Z

    goto :goto_0
.end method

.method public setMediaScannerRunCheck(Z)V
    .locals 0
    .parameter "action"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/music/discplus/util/DiscPlusManager;->mMediaScannerRunCheck:Z

    .line 68
    return-void
.end method
