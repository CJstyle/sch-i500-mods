.class public Lcom/sec/android/app/camera/gallery/Image;
.super Lcom/sec/android/app/camera/gallery/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# instance fields
.field private mRotation:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
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
    .parameter "rotation"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p14}, Lcom/sec/android/app/camera/gallery/BaseImage;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 50
    iput p15, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    .line 51
    return-void
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    return v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "rotateAsNeeded"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 159
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/Image;->mDataPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/Image;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    :cond_0
    return-object v0
.end method
