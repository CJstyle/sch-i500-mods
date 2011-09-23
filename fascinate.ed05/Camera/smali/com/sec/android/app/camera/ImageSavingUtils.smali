.class public Lcom/sec/android/app/camera/ImageSavingUtils;
.super Ljava/lang/Object;
.source "ImageSavingUtils.java"


# static fields
.field protected static final CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String; = null

.field protected static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "ImageSavingUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "/DCIM/Camera"

    .line 45
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

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 49
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

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z
    .locals 13
    .parameter "shootingMode"
    .parameter "directory"
    .parameter "filename"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "source"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "whiteBalance"
    .parameter "flashMode"

    .prologue
    .line 69
    const/4 v5, 0x0

    .line 72
    .local v5, outputStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_0
    new-instance v4, Ljava/io/File;

    .end local v4           #dir:Ljava/io/File;
    invoke-direct {v4, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v4, file:Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .local v11, outputStream:Ljava/io/OutputStream;
    if-eqz p6, :cond_2

    .line 77
    :try_start_1
    sget-object p7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p7
    const/16 v5, 0x4b

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move v2, v5

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    :goto_0
    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 91
    if-eqz v11, :cond_1

    .line 92
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 99
    .end local p6
    :cond_1
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 116
    .end local v4           #file:Ljava/io/File;
    .end local p0
    .end local p1
    :goto_2
    :pswitch_0
    const/4 p0, 0x1

    move p1, p0

    move-object p0, v11

    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_3
    return p1

    .line 79
    .restart local v4       #file:Ljava/io/File;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .local p0, shootingMode:I
    .restart local p1
    .restart local p2
    .restart local p6
    .restart local p7
    :cond_2
    :try_start_3
    move-object v0, v11

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 83
    .end local p7
    :catch_0
    move-exception p0

    move-object p1, v11

    .line 84
    .end local v4           #file:Ljava/io/File;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .local p0, ex:Ljava/io/FileNotFoundException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_4
    :try_start_4
    const-string p2, "ImageSavingUtils"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    const/4 p0, 0x0

    .line 91
    .end local p0           #ex:Ljava/io/FileNotFoundException;
    if-eqz p1, :cond_3

    .line 92
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    move-object v12, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .local v12, outputStream:Ljava/io/OutputStream;
    move p1, p0

    move-object p0, v12

    .line 85
    .end local v12           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 86
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    .local p0, shootingMode:I
    .local p1, directory:Ljava/lang/String;
    .restart local p2
    .restart local p7
    :catch_1
    move-exception p0

    move-object p1, v5

    .line 87
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local p7
    .local p0, ex:Ljava/io/IOException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_6
    :try_start_6
    const-string p2, "ImageSavingUtils"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 88
    const/4 p0, 0x0

    .line 91
    .end local p0           #ex:Ljava/io/IOException;
    if-eqz p1, :cond_4

    .line 92
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :goto_7
    move-object v12, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local v12       #outputStream:Ljava/io/OutputStream;
    move p1, p0

    move-object p0, v12

    .line 88
    .end local v12           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 90
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    .local p0, shootingMode:I
    .local p1, directory:Ljava/lang/String;
    .restart local p2
    .restart local p7
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v5

    .line 91
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local p1           #directory:Ljava/lang/String;
    .end local p2
    .end local p7
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_8
    if-eqz p0, :cond_5

    .line 92
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 90
    .end local p0           #outputStream:Ljava/io/OutputStream;
    :cond_5
    :goto_9
    throw p1

    .line 108
    .end local p6
    .restart local v4       #file:Ljava/io/File;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .local p0, shootingMode:I
    .restart local p1       #directory:Ljava/lang/String;
    .restart local p2
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #shootingMode:I
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/"

    .end local p1           #directory:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, filePath:Ljava/lang/String;
    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 109
    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/camera/ImageSavingUtils;->setExif(Ljava/lang/String;JLandroid/location/Location;III)V

    goto :goto_2

    .line 94
    .end local v4           #filePath:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p0, outputStream:Ljava/io/OutputStream;
    .restart local p6
    :catch_2
    move-exception p0

    goto :goto_9

    .end local p0           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception p2

    goto :goto_5

    :catch_4
    move-exception p2

    goto :goto_7

    .local v4, file:Ljava/io/File;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .local p0, shootingMode:I
    .local p1, directory:Ljava/lang/String;
    .restart local p2
    :catch_5
    move-exception p6

    goto :goto_1

    .line 90
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v11

    .end local v11           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_8

    .end local v4           #file:Ljava/io/File;
    .end local p0           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p1, outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception p0

    move-object v12, p0

    move-object p0, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local p0       #outputStream:Ljava/io/OutputStream;
    move-object p1, v12

    goto :goto_8

    .line 86
    .restart local v4       #file:Ljava/io/File;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .local p0, shootingMode:I
    .local p1, directory:Ljava/lang/String;
    .restart local p2
    :catch_6
    move-exception p0

    move-object p1, v11

    .end local v11           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_6

    .line 83
    .end local v4           #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    .local p1, directory:Ljava/lang/String;
    .restart local p7
    :catch_7
    move-exception p0

    move-object p1, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertGpsToExif(D)Ljava/lang/String;
    .locals 12
    .parameter "location"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 202
    invoke-static {p0, p1, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, sec:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, value:[Ljava/lang/String;
    array-length v6, v5

    if-eq v6, v7, :cond_0

    .line 205
    const/4 v6, 0x0

    .line 211
    :goto_0
    return-object v6

    .line 207
    :cond_0
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, m:I
    aget-object v6, v5, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, d:I
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 211
    .local v2, s:D
    const-string v6, "%d/1,%d/1,%d/10000"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v8, v2

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 54
    const-string v0, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JI)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"
    .parameter "sequenceNumber"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setExif(Ljava/lang/String;JLandroid/location/Location;III)V
    .locals 4
    .parameter "filePath"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "whiteBalance"
    .parameter "flashMode"

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    if-nez v1, :cond_0

    move-object p0, v1

    .line 198
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local p1
    .end local p3
    .local p0, exif:Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 129
    .restart local v0       #exif:Landroid/media/ExifInterface;
    .local p0, filePath:Ljava/lang/String;
    .restart local p1
    .restart local p3
    :catch_0
    move-exception p0

    .line 130
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "ImageSavingUtils"

    .end local p1
    const-string p2, "cannot read exif"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    .line 131
    .end local v0           #exif:Landroid/media/ExifInterface;
    .local p0, exif:Landroid/media/ExifInterface;
    goto :goto_0

    .line 138
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .local p0, filePath:Ljava/lang/String;
    .restart local p1
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .end local p0           #filePath:Ljava/lang/String;
    const-string v0, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    .local p0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 140
    .local p0, sTaken:Ljava/lang/String;
    const-string p1, "DateTime"

    .end local p1
    invoke-virtual {v1, p1, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz p3, :cond_2

    .line 143
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide p0

    .line 144
    .local p0, lat:D
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object p2

    .line 145
    .local p2, slat:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 146
    const-string v0, "GPSLatitude"

    invoke-virtual {v1, v0, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string p2, "GPSLatitudeRef"

    .end local p2           #slat:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_3

    .end local p0           #lat:D
    const-string p0, "N"

    :goto_1
    invoke-virtual {v1, p2, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    .line 151
    .local p0, lon:D
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object p2

    .line 152
    .local p2, slon:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 153
    const-string p3, "GPSLongitude"

    .end local p3
    invoke-virtual {v1, p3, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string p2, "GPSLongitudeRef"

    .end local p2           #slon:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_4

    .end local p0           #lon:D
    const-string p0, "E"

    :goto_2
    invoke-virtual {v1, p2, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    const-string p0, "Make"

    const-string p1, "SAMSUNG"

    invoke-virtual {v1, p0, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string p0, "Model"

    const-string p1, "SCH-I500"

    invoke-virtual {v1, p0, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string p0, "Orientation"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-nez p5, :cond_5

    const/4 p0, 0x0

    .line 164
    .local p0, wb:I
    :goto_3
    const-string p1, "WhiteBalance"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #wb:I
    invoke-virtual {v1, p1, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 p0, 0x0

    .line 167
    .local p0, EXIF_FLASH_UNKNOWN:I
    const/16 p0, 0x8

    .line 168
    .local p0, EXIF_FLASH_ON:I
    const/16 p0, 0x10

    .line 169
    .local p0, EXIF_FLASH_OFF:I
    const/16 p0, 0x18

    .line 170
    .local p0, EXIF_FLASH_AUTO:I
    const/16 p0, 0x20

    .line 174
    .local p0, EXIF_FLASH_UNSUPPORTED:I
    packed-switch p6, :pswitch_data_0

    .line 186
    const/4 p0, 0x0

    .line 191
    .local p0, exifFlash:I
    :goto_4
    const-string p1, "Flash"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #exifFlash:I
    invoke-virtual {v1, p1, p0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :try_start_1
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object p0, v1

    .line 198
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local p0, exif:Landroid/media/ExifInterface;
    goto/16 :goto_0

    .line 147
    .end local p0           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local p3
    :cond_3
    const-string p0, "S"

    goto :goto_1

    .line 154
    .end local p3
    :cond_4
    const-string p0, "W"

    goto :goto_2

    .line 162
    :cond_5
    const/4 p0, 0x1

    goto :goto_3

    .line 177
    .local p0, EXIF_FLASH_UNSUPPORTED:I
    :pswitch_0
    const/16 p0, 0x8

    .line 178
    .local p0, exifFlash:I
    goto :goto_4

    .line 180
    .local p0, EXIF_FLASH_UNSUPPORTED:I
    :pswitch_1
    const/16 p0, 0x18

    .line 181
    .local p0, exifFlash:I
    goto :goto_4

    .line 183
    .local p0, EXIF_FLASH_UNSUPPORTED:I
    :pswitch_2
    const/16 p0, 0x10

    .line 184
    .local p0, exifFlash:I
    goto :goto_4

    .line 195
    .end local p0           #exifFlash:I
    :catch_1
    move-exception p0

    .line 196
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "ImageSavingUtils"

    const-string p2, "saveAttributes is failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .parameter "cr"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    return-void
.end method
