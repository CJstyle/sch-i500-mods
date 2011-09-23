.class public Lcom/sec/android/app/camera/gallery/VideoObject;
.super Lcom/sec/android/app/camera/gallery/BaseImage;
.source "VideoObject.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoObject"


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "container"
    .parameter "cr"
    .parameter "id"
    .parameter "index"
    .parameter "uri"
    .parameter "dataPath"
    .parameter "miniThumbMagic"
    .parameter "mimeType"
    .parameter "dateTaken"
    .parameter "title"
    .parameter "displayName"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p14}, Lcom/sec/android/app/camera/gallery/BaseImage;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 53
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/sec/android/app/camera/gallery/VideoObject;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/gallery/VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"
    .parameter "useNative"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/VideoObject;->mDataPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/VideoObject;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, input:Ljava/io/InputStream;
    move-object v2, v1

    .line 75
    .end local v1           #input:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, ex:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/sec/android/app/camera/gallery/VideoObject;->mId:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 113
    :try_start_0
    iget-wide v1, p0, Lcom/sec/android/app/camera/gallery/VideoObject;->mId:J

    .line 114
    .local v1, id:J
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/VideoObject;->mDataPath:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 117
    .end local v1           #id:J
    :goto_0
    return-object v3

    .line 115
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 116
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "VideoObject"

    const-string v4, "miniThumbBitmap got exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "rotateAsNeeded"

    .prologue
    .line 107
    const/16 v0, 0x140

    const/high16 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/gallery/VideoObject;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoObject"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/android/app/camera/gallery/VideoObject;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
