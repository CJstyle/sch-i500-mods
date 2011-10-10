.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# instance fields
.field private mBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mRotate:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 64
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 69
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 64
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 77
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 90
    iput p6, p0, Lcom/android/mms/model/ImageModel;->mDuration:I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 64
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 96
    iput p6, p0, Lcom/android/mms/model/ImageModel;->mDuration:I

    .line 97
    return-void
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    move v14, v0

    .line 214
    .local v14, outWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    move v13, v0

    .line 216
    .local v13, outHeight:I
    const/4 v15, 0x1

    .line 218
    .local v15, s:I
    :goto_0
    div-int v3, v14, v15

    move v0, v3

    move/from16 v1, p1

    if-gt v0, v1, :cond_0

    div-int v3, v13, v15

    move v0, v3

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    .line 219
    :cond_0
    mul-int/lit8 v15, v15, 0x2

    goto :goto_0

    .line 221
    :cond_1
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnailBitmap: scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v14, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v13, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 226
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    iput v15, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 228
    const/4 v11, 0x0

    .line 230
    .local v11, input:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 233
    const/4 v3, 0x0

    invoke-static {v11, v3, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 234
    .local v2, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mRotate:I

    move v3, v0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 235
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v7, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mRotate:I

    move v3, v0

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 237
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 247
    .end local v7           #m:Landroid/graphics/Matrix;
    :cond_3
    if-eqz v11, :cond_4

    .line 249
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    move-object v3, v2

    .line 252
    .end local v2           #b:Landroid/graphics/Bitmap;
    :cond_5
    :goto_2
    return-object v3

    .line 250
    .restart local v2       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 251
    .local v9, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 240
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v9           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v9, v3

    .line 241
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    const/4 v3, 0x0

    .line 247
    if-eqz v11, :cond_5

    .line 249
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 250
    :catch_2
    move-exception v9

    .line 251
    .local v9, e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 243
    .end local v9           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v10, v3

    .line 244
    .local v10, ex:Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 245
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    .end local v10           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_6

    .line 249
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 252
    :cond_6
    :goto_3
    throw v3

    .line 250
    :catch_4
    move-exception v9

    .line 251
    .restart local v9       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private decodeImageBounds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 123
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 124
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 126
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 131
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 103
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 109
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 111
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 119
    return-void
.end method

.method private internalGetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "uri"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 198
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 200
    const/16 v1, 0x1e0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 173
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public checkCreationMode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 179
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkImageCreationMode(Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method public checkResolution()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 185
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 186
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithDrmCheck()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mDuration:I

    if-nez v0, :cond_0

    .line 259
    invoke-super {p0}, Lcom/android/mms/model/RegionMediaModel;->getDuration()I

    move-result v0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mDuration:I

    goto :goto_0
.end method

.method public getMediaResizable()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .parameter "evt"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 140
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 141
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 143
    iput-boolean v3, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 158
    return-void

    .line 144
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 146
    iput-boolean v3, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 149
    iget-short v1, p0, Lcom/android/mms/model/ImageModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 150
    iput-boolean v4, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    goto :goto_0

    .line 152
    :cond_3
    iget-short v1, p0, Lcom/android/mms/model/ImageModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 153
    iput-boolean v4, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    goto :goto_0
.end method

.method protected resizeMedia(IJ)V
    .locals 9
    .parameter "byteLimit"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-string v8, "Mms/image"

    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, image:Lcom/android/mms/ui/UriImage;
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/UriImage;

    iget-object v6, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #image:Lcom/android/mms/ui/UriImage;
    .local v2, image:Lcom/android/mms/ui/UriImage;
    move-object v1, v2

    .line 282
    .end local v2           #image:Lcom/android/mms/ui/UriImage;
    .restart local v1       #image:Lcom/android/mms/ui/UriImage;
    :goto_0
    if-nez v1, :cond_0

    .line 283
    new-instance v6, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No room to resize picture: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 280
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error initializing UriImage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v7

    invoke-virtual {v1, v6, v7, p1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 290
    .local v4, part:Lcom/google/android/mms/pdu/PduPart;
    iget-object v6, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 291
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    if-eqz v4, :cond_1

    .line 292
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    array-length v6, v6

    iput v6, p0, Lcom/android/mms/model/ImageModel;->mSize:I

    .line 297
    invoke-virtual {v5, v4, p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v3

    .line 298
    .local v3, newUri:Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/android/mms/model/ImageModel;->setUri(Landroid/net/Uri;)V

    .line 299
    return-void

    .line 294
    .end local v3           #newUri:Landroid/net/Uri;
    :cond_1
    const-string v6, "Mms/image"

    const-string v6, "Image data is null"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-direct {v6}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v6
.end method
