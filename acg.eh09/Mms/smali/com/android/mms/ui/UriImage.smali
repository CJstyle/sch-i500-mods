.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mRotate:I

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 60
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    :cond_2
    :goto_0
    invoke-static {p2, p1}, Lcom/android/mms/ui/UriImage;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 73
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 84
    return-void

    .line 67
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private decodeBoundsInfo()V
    .locals 8

    .prologue
    const-string v7, "IOException caught while closing stream"

    const-string v6, "Mms/image"

    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 143
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 144
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 145
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 147
    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    .line 148
    :cond_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 149
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 161
    :goto_0
    if-eqz v1, :cond_1

    .line 163
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    return-void

    .line 151
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 152
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 155
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 157
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v1, :cond_1

    .line 163
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v0

    .line 166
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 159
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    if-eqz v1, :cond_1

    .line 163
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 164
    :catch_4
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 161
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 163
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 167
    :cond_3
    :goto_2
    throw v3

    .line 164
    :catch_5
    move-exception v0

    .line 166
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static getDegreeFromFile(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, scheme:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 394
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 402
    :goto_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .local v2, mExif:Landroid/media/ExifInterface;
    const/4 v0, 0x0

    .line 409
    .local v0, degree:I
    if-eqz v2, :cond_0

    .line 410
    const/4 v3, 0x0

    .line 412
    .local v3, orientation:I
    :try_start_1
    const-string v6, "Orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 417
    :goto_1
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 418
    packed-switch v3, :pswitch_data_0

    .line 429
    :pswitch_0
    const/4 v0, 0x0

    .end local v3           #orientation:I
    :cond_0
    :goto_2
    move v6, v0

    .line 434
    .end local v0           #degree:I
    .end local v2           #mExif:Landroid/media/ExifInterface;
    :goto_3
    return v6

    .line 396
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 403
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 404
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "Mms/image"

    const-string v7, "can not read exif"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    const/4 v6, 0x0

    goto :goto_3

    .line 413
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #degree:I
    .restart local v2       #mExif:Landroid/media/ExifInterface;
    .restart local v3       #orientation:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 414
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1

    .line 420
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :pswitch_1
    const/16 v0, 0x5a

    .line 421
    goto :goto_2

    .line 423
    :pswitch_2
    const/16 v0, 0xb4

    .line 424
    goto :goto_2

    .line 426
    :pswitch_3
    const/16 v0, 0x10e

    .line 427
    goto :goto_2

    .line 418
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getResizedImageData(III)[B
    .locals 25
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v19, v0

    .line 225
    .local v19, outWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v18, v0

    .line 227
    .local v18, outHeight:I
    const/16 v22, 0x1

    .line 228
    .local v22, scaleFactor:I
    :goto_0
    div-int v5, v19, v22

    move v0, v5

    move/from16 v1, p1

    if-gt v0, v1, :cond_0

    div-int v5, v18, v22

    move v0, v5

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 229
    :cond_0
    mul-int/lit8 v22, v22, 0x2

    goto :goto_0

    .line 232
    :cond_1
    const-string v5, "Mms:app"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResizedImageData: wlimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hlimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sizeLimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", initialScaleFactor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_2
    const/4 v13, 0x0

    .line 240
    .local v13, input:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 242
    .local v16, os:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x1

    .local v11, attempts:I
    move-object/from16 v17, v16

    .line 245
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .local v17, os:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c

    move-result-object v13

    .line 248
    const/16 v20, 0x50

    .line 250
    .local v20, quality:I
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v13, v5, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 252
    .local v4, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    move v5, v0

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 253
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 256
    .local v9, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    move v5, v0

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 257
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c

    move-result-object v4

    .line 259
    .end local v9           #m:Landroid/graphics/Matrix;
    :cond_3
    if-nez v4, :cond_7

    .line 260
    const/4 v5, 0x0

    .line 323
    if-eqz v13, :cond_4

    .line 325
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 330
    :cond_4
    :goto_2
    if-eqz v17, :cond_5

    .line 332
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_3
    move-object/from16 v16, v17

    .line 335
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .end local v20           #quality:I
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_4
    return-object v5

    .line 326
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #quality:I
    :catch_0
    move-exception v12

    .line 327
    .local v12, e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 333
    .end local v12           #e:Ljava/io/IOException;
    :catch_1
    move-exception v12

    .line 334
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 262
    .end local v12           #e:Ljava/io/IOException;
    :cond_7
    :try_start_4
    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v0, v5

    move/from16 v1, p1

    if-gt v0, v1, :cond_8

    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, v5

    move/from16 v1, p2

    if-le v0, v1, :cond_c

    .line 265
    :cond_8
    div-int v24, v19, v22

    .line 266
    .local v24, scaledWidth:I
    div-int v23, v18, v22

    .line 268
    .local v23, scaledHeight:I
    const-string v5, "Mms:app"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 269
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_9
    div-int v5, v19, v22

    div-int v6, v18, v22

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_c

    move-result-object v4

    .line 276
    if-nez v4, :cond_c

    .line 277
    const/4 v5, 0x0

    .line 323
    if-eqz v13, :cond_a

    .line 325
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 330
    :cond_a
    :goto_5
    if-eqz v17, :cond_b

    .line 332
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :goto_6
    move-object/from16 v16, v17

    .line 335
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 326
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v12

    .line 327
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 333
    .end local v12           #e:Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 334
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 286
    .end local v12           #e:Ljava/io/IOException;
    .end local v23           #scaledHeight:I
    .end local v24           #scaledWidth:I
    :cond_c
    :try_start_7
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_c

    .line 287
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_8
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 288
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    .line 289
    .local v14, jpgFileSize:I
    move v0, v14

    move/from16 v1, p3

    if-le v0, v1, :cond_e

    .line 290
    mul-int v5, v20, p3

    div-int v21, v5, v14

    .line 291
    .local v21, reducedQuality:I
    const/16 v5, 0x32

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_e

    .line 292
    move/from16 v20, v21

    .line 294
    const-string v5, "Mms:app"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 295
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_d
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    .line 299
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_9
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c

    move-object/from16 v16, v17

    .line 306
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v14           #jpgFileSize:I
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .end local v21           #reducedQuality:I
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :cond_e
    :goto_7
    :try_start_a
    const-string v5, "Mms:app"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 307
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attempt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v16, :cond_14

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v19, v22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v18, v22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scaleFactor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " quality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_f
    mul-int/lit8 v22, v22, 0x2

    .line 315
    add-int/lit8 v11, v11, 0x1

    .line 316
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    move-result v5

    move v0, v5

    move/from16 v1, p3

    if-le v0, v1, :cond_11

    :cond_10
    const/4 v5, 0x4

    if-lt v11, v5, :cond_18

    .line 318
    :cond_11
    if-nez v16, :cond_15

    const/4 v5, 0x0

    .line 323
    :goto_9
    if-eqz v13, :cond_12

    .line 325
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 330
    :cond_12
    :goto_a
    if-eqz v16, :cond_6

    .line 332
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_4

    .line 333
    :catch_4
    move-exception v12

    .line 334
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 302
    .end local v12           #e:Ljava/io/IOException;
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v5

    move-object v12, v5

    move-object/from16 v16, v17

    .line 303
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .local v12, e:Ljava/lang/OutOfMemoryError;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :goto_b
    :try_start_d
    const-string v5, "Mms/image"

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_7

    .line 319
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v5

    move-object v12, v5

    .line 320
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #quality:I
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_c
    :try_start_e
    const-string v5, "Mms/image"

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 321
    const/4 v5, 0x0

    .line 323
    if-eqz v13, :cond_13

    .line 325
    :try_start_f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 330
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :cond_13
    :goto_d
    if-eqz v16, :cond_6

    .line 332
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_4

    .line 333
    :catch_7
    move-exception v12

    .line 334
    .local v12, e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 307
    .end local v12           #e:Ljava/io/IOException;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #quality:I
    :cond_14
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    goto/16 :goto_8

    .line 318
    :cond_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_6

    move-result-object v5

    goto :goto_9

    .line 326
    :catch_8
    move-exception v12

    .line 327
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 326
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #quality:I
    .local v12, e:Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v12

    .line 327
    .local v12, e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 323
    .end local v12           #e:Ljava/io/IOException;
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :goto_e
    if-eqz v13, :cond_16

    .line 325
    :try_start_12
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 330
    :cond_16
    :goto_f
    if-eqz v16, :cond_17

    .line 332
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 335
    :cond_17
    :goto_10
    throw v5

    .line 326
    :catch_a
    move-exception v12

    .line 327
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 333
    .end local v12           #e:Ljava/io/IOException;
    :catch_b
    move-exception v12

    .line 334
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 323
    .end local v12           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_e

    .line 319
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v5

    move-object v12, v5

    move-object/from16 v16, v17

    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_c

    .line 302
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #quality:I
    :catch_d
    move-exception v5

    move-object v12, v5

    goto :goto_b

    .end local v4           #b:Landroid/graphics/Bitmap;
    :cond_18
    move-object/from16 v17, v16

    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 9
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 363
    const/4 v8, 0x0

    .line 364
    .local v8, degree:I
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    const/4 v7, 0x0

    .line 367
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 369
    if-eqz v7, :cond_0

    .line 370
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 378
    :cond_0
    if-eqz v7, :cond_1

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 385
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 376
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 378
    if-eqz v7, :cond_1

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 382
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_3
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMMSUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->getDegreeFromFile(Landroid/net/Uri;)I

    move-result v8

    goto :goto_0
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v0, "_data"

    const-string v9, "Query on "

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 107
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 119
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    :cond_3
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 133
    :goto_0
    iput-object v8, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 137
    return-void

    .line 128
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 130
    .restart local v8       #filePath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    .line 89
    .local v2, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, extension:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 94
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .end local v0           #dotPos:I
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private static isMMSUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, authority:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const/4 v2, 0x1

    .line 358
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, authority:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const/4 v2, 0x1

    .line 348
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 7
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 198
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 200
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v1

    .line 201
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 205
    const/4 v6, 0x0

    .line 218
    :goto_0
    return-object v6

    .line 208
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 210
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 212
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 213
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 214
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 215
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v0, v6

    .line 216
    .local v0, contentId:[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    move-object v6, v2

    .line 218
    goto :goto_0

    .end local v0           #contentId:[B
    :cond_1
    move-object v0, v5

    .line 215
    goto :goto_1
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
