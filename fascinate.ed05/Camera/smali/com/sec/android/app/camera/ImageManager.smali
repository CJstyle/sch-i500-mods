.class public Lcom/sec/android/app/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ImageManager$1;,
        Lcom/sec/android/app/camera/ImageManager$EmptyImageList;,
        Lcom/sec/android/app/camera/ImageManager$DataLocation;,
        Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final CAMERA_SD_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_SD_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "/DCIM/Camera"

    .line 61
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 62
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_SD_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_SD_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_SD_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 5
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, outputStream:Ljava/io/OutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v0, file:Ljava/io/File;
    new-instance p5, Ljava/io/FileOutputStream;

    .end local p5
    invoke-direct {p5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local p5, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 256
    :try_start_1
    sget-object p8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p8
    const/16 v0, 0x4b

    invoke-virtual {p7, p8, v0, p5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 257
    .end local v0           #file:Ljava/io/File;
    const/4 p7, 0x0

    const/4 p8, 0x0

    aput p8, p9, p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 269
    .end local p7
    :goto_0
    invoke-static {p5}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 272
    new-instance p7, Landroid/content/ContentValues;

    const/4 p8, 0x7

    invoke-direct {p7, p8}, Landroid/content/ContentValues;-><init>(I)V

    .line 273
    .local p7, values:Landroid/content/ContentValues;
    const-string p8, "title"

    invoke-virtual {p7, p8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string p1, "_display_name"

    .end local p1
    invoke-virtual {p7, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string p1, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string p1, "orientation"

    const/4 p2, 0x0

    aget p2, p9, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string p1, "_data"

    invoke-virtual {p7, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-eqz p4, :cond_1

    .line 285
    const-string p1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 286
    const-string p1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 289
    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    move-object p1, p0

    move-object p0, p5

    .end local p5           #outputStream:Ljava/io/OutputStream;
    .end local p7           #values:Landroid/content/ContentValues;
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object p1

    .line 259
    .restart local v0       #file:Ljava/io/File;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    .restart local p5       #outputStream:Ljava/io/OutputStream;
    .local p7, source:Landroid/graphics/Bitmap;
    .restart local p8
    :cond_2
    :try_start_2
    invoke-virtual {p5, p8}, Ljava/io/FileOutputStream;->write([B)V

    .line 260
    const/4 p7, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    .end local p7           #source:Landroid/graphics/Bitmap;
    move-result p8

    .end local p8
    aput p8, p9, p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 262
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception p0

    move-object p1, p5

    .line 263
    .end local p5           #outputStream:Ljava/io/OutputStream;
    .local p0, ex:Ljava/io/FileNotFoundException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 264
    const/4 p0, 0x0

    .line 269
    .end local p0           #ex:Ljava/io/FileNotFoundException;
    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .local v4, outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v4

    .line 264
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 265
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_1
    move-exception p0

    move-object p1, v2

    .line 266
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, ex:Ljava/io/IOException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 267
    const/4 p0, 0x0

    .line 269
    .end local p0           #ex:Ljava/io/IOException;
    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v4

    .line 267
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 269
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p1           #title:Ljava/lang/String;
    .end local p2
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_4
    invoke-static {p0}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #title:Ljava/lang/String;
    .restart local p2
    .restart local p5       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, p5

    .end local p5           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .end local p0           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p1, outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception p0

    move-object v4, p0

    move-object p0, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local p0       #outputStream:Ljava/io/OutputStream;
    move-object p1, v4

    goto :goto_4

    .line 265
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p5       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception p0

    move-object p1, p5

    .end local p5           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 262
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p1, title:Ljava/lang/String;
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_3
    move-exception p0

    move-object p1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static checkFsWritable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 518
    :goto_0
    return v4

    .line 506
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, ".probe"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 510
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 512
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    .line 513
    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    const/4 v4, 0x1

    goto :goto_0

    .line 517
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/io/IOException;
    move v4, v6

    .line 518
    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyImageListParam()Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 2

    .prologue
    .line 474
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 475
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 476
    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, degree:I
    const/4 v2, 0x0

    .line 296
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 300
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 301
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 303
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 305
    packed-switch v4, :pswitch_data_0

    .line 319
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 297
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 298
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 307
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 308
    goto :goto_1

    .line 310
    :pswitch_2
    const/16 v0, 0xb4

    .line 311
    goto :goto_1

    .line 313
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 305
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

.method public static getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 459
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 460
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 461
    iput p1, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 462
    iput p2, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 463
    iput-object p3, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 464
    return-object v0
.end method

.method public static getLastImageThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/image_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVideoThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/video_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "uri"

    .prologue
    .line 468
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 469
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 470
    return-object v0
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.tempjpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v3, 0x1

    .line 527
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    if-eqz p0, :cond_0

    .line 531
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->checkFsWritable()Z

    move-result v1

    .local v1, writable:Z
    move v2, v1

    .line 540
    .end local v1           #writable:Z
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 534
    goto :goto_0

    .line 536
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 538
    goto :goto_0

    .line 540
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 218
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 202
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 559
    const/4 v7, 0x0

    .line 560
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 563
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 568
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_1
    return v7
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 414
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideo(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 227
    instance-of v0, p0, Lcom/sec/android/app/camera/gallery/VideoObject;

    return v0
.end method

.method public static makeEmptyImageList()Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 2

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getEmptyImageListParam()Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 5
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    const-string v3, ""

    .line 392
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 398
    .local v1, uriString:Ljava/lang/String;
    :goto_0
    const-string v2, "content://drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    .line 408
    :goto_1
    return-object v2

    .line 392
    .end local v1           #uriString:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    move-object v1, v3

    goto :goto_0

    .line 401
    .restart local v1       #uriString:Ljava/lang/String;
    :cond_1
    const-string v2, "content://media/external/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x4

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 404
    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/ImageManager;->makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 407
    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "bucketId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 408
    .local v0, bucketId:Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, p2, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 407
    .end local v0           #bucketId:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    move-object v0, v3

    goto :goto_2
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 2
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 481
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/camera/ImageManager;->getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 483
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 9
    .parameter "cr"
    .parameter "param"

    .prologue
    .line 325
    iget-object v8, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 326
    .local v8, location:Lcom/sec/android/app/camera/ImageManager$DataLocation;
    iget v6, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 327
    .local v6, inclusion:I
    iget v4, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 328
    .local v4, sort:I
    iget-object v5, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 329
    .local v5, bucketId:Ljava/lang/String;
    iget-object v0, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 330
    .local v0, singleImageUri:Landroid/net/Uri;
    iget-boolean p1, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 332
    .local p1, isEmptyImageList:Z
    if-nez p1, :cond_0

    if-nez p0, :cond_1

    .line 333
    :cond_0
    new-instance p0, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;

    .end local p0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;-><init>(Lcom/sec/android/app/camera/ImageManager$1;)V

    .line 386
    .end local v0           #singleImageUri:Landroid/net/Uri;
    .end local p1           #isEmptyImageList:Z
    :goto_0
    return-object p0

    .line 336
    .restart local v0       #singleImageUri:Landroid/net/Uri;
    .restart local p0
    .restart local p1       #isEmptyImageList:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 337
    new-instance p1, Lcom/sec/android/app/camera/gallery/SingleImageList;

    .end local p1           #isEmptyImageList:Z
    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/gallery/SingleImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object p0, p1

    goto :goto_0

    .line 341
    .restart local p1       #isEmptyImageList:Z
    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    .end local p1           #isEmptyImageList:Z
    move-result p1

    .line 344
    .local p1, haveSdCard:Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v7, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    if-eqz p1, :cond_4

    sget-object p1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .end local p1           #haveSdCard:Z
    if-eq v8, p1, :cond_4

    .line 347
    and-int/lit8 p1, v6, 0x1

    if-eqz p1, :cond_3

    .line 348
    new-instance v0, Lcom/sec/android/app/camera/gallery/ImageList;

    .end local v0           #singleImageUri:Landroid/net/Uri;
    sget-object v2, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_3
    and-int/lit8 p1, v6, 0x4

    if-eqz p1, :cond_4

    .line 352
    new-instance p1, Lcom/sec/android/app/camera/gallery/VideoList;

    sget-object v0, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, v4, v5}, Lcom/sec/android/app/camera/gallery/VideoList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_4
    sget-object p1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-eq v8, p1, :cond_5

    sget-object p1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-ne v8, p1, :cond_7

    .line 356
    :cond_5
    and-int/lit8 p1, v6, 0x1

    if-eqz p1, :cond_6

    .line 357
    new-instance v0, Lcom/sec/android/app/camera/gallery/ImageList;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_6
    and-int/lit8 p1, v6, 0x2

    if-eqz p1, :cond_7

    .line 363
    new-instance p1, Lcom/sec/android/app/camera/gallery/DrmImageList;

    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, v4, v5}, Lcom/sec/android/app/camera/gallery/DrmImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 371
    .local p0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    :cond_8
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 372
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 373
    .local p1, sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 374
    invoke-virtual {p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->close()V

    .line 375
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 379
    .end local p1           #sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    const/4 p1, 0x1

    if-ne p0, p1, :cond_a

    .line 380
    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 381
    .local p0, list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    goto/16 :goto_0

    .line 384
    .end local p0           #list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_a
    new-instance p0, Lcom/sec/android/app/camera/gallery/ImageListUber;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/camera/gallery/ImageListUber;-><init>([Lcom/sec/android/app/camera/gallery/IImageList;I)V

    .line 386
    .local p0, uber:Lcom/sec/android/app/camera/gallery/ImageListUber;
    goto/16 :goto_0
.end method

.method public static makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 491
    invoke-static {p1}, Lcom/sec/android/app/camera/ImageManager;->getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 547
    if-nez p0, :cond_0

    .line 553
    :goto_0
    return-object v1

    .line 550
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 176
    move v0, p0

    .line 177
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 181
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 183
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 184
    const/4 v1, 0x0

    .line 195
    .local v1, retVal:I
    :goto_0
    return v1

    .line 185
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 186
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 187
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 188
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 189
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 190
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 192
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .parameter "cr"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 231
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    return-void
.end method
