.class public abstract Lcom/android/mms/model/MediaModel;
.super Lcom/android/mms/model/Model;
.source "MediaModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/MediaModel$MediaAction;
    }
.end annotation


# instance fields
.field protected mBegin:I

.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mData:[B

.field protected mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

.field protected mDuration:I

.field protected mFill:S

.field private final mMediaActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel$MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaResizeable:Z

.field protected mSeekTo:I

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 79
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initMediaSize()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    .line 105
    invoke-static {p1, p5}, Lcom/android/mms/drm/DrmUtils;->insert(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 106
    invoke-virtual {p5}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 85
    if-nez p5, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 94
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method private initMediaSize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-string v8, "IOException caught while closing stream"

    const-string v7, "Mms/media"

    .line 359
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 360
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 362
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 363
    instance-of v5, v4, Ljava/io/FileInputStream;

    if-eqz v5, :cond_2

    .line 365
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 366
    .local v3, f:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v3           #f:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 382
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    :goto_1
    const/4 v5, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 369
    iget v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 373
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 375
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "Mms/media"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    instance-of v5, v2, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_4

    .line 377
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 382
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 386
    :cond_3
    :goto_2
    throw v5

    .line 383
    :catch_1
    move-exception v2

    .line 385
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Mms/media"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 380
    :cond_4
    if-eqz v4, :cond_1

    .line 382
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 383
    :catch_2
    move-exception v2

    .line 385
    const-string v5, "Mms/media"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 383
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 385
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "Mms/media"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 405
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 407
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/MediaModel$MediaAction;

    move-object v0, p0

    goto :goto_0
.end method

.method public getData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->consumeRights()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Landroid/drm/mobile2/OMADRMException;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 184
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 187
    .end local v0           #data:[B
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrmFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmObject()Lcom/android/mms/drm/DrmWrapper;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return v0
.end method

.method public getImageDuration(Lcom/android/mms/model/MediaModel;)I
    .locals 12
    .parameter "image"

    .prologue
    .line 301
    const/4 v4, 0x0

    .line 302
    .local v4, dur:I
    const/4 v6, 0x0

    .line 304
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, contentType:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 308
    :cond_0
    const-string v10, "image/gif"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 310
    const/4 v7, 0x0

    .line 312
    .local v7, is2:Ljava/io/ByteArrayInputStream;
    iget-object v10, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 314
    if-eqz v6, :cond_6

    .line 315
    const/4 v9, 0x0

    .line 316
    .local v9, streamSize:I
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    .line 317
    .local v2, canMark:Z
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 318
    if-eqz v2, :cond_2

    .line 319
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/io/InputStream;->mark(I)V

    .line 330
    :goto_0
    invoke-static {v6}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v8

    .line 331
    .local v8, mMovie:Landroid/graphics/Movie;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Movie;->duration()I

    move-result v10

    if-lez v10, :cond_4

    .line 332
    invoke-virtual {v8}, Landroid/graphics/Movie;->duration()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 347
    if-eqz v6, :cond_1

    .line 349
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    .end local v2           #canMark:Z
    .end local v3           #contentType:Ljava/lang/String;
    .end local v7           #is2:Ljava/io/ByteArrayInputStream;
    .end local v8           #mMovie:Landroid/graphics/Movie;
    .end local v9           #streamSize:I
    :cond_1
    :goto_1
    return v10

    .line 321
    .restart local v2       #canMark:Z
    .restart local v3       #contentType:Ljava/lang/String;
    .restart local v7       #is2:Ljava/io/ByteArrayInputStream;
    .restart local v9       #streamSize:I
    :cond_2
    :try_start_2
    new-array v1, v9, [B

    .line 322
    .local v1, buffer:[B
    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10, v9}, Ljava/io/InputStream;->read([BII)I

    .line 323
    move-object v0, v1

    .line 324
    .local v0, array:[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .end local v7           #is2:Ljava/io/ByteArrayInputStream;
    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 325
    .restart local v7       #is2:Ljava/io/ByteArrayInputStream;
    move-object v6, v7

    .line 326
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    .line 327
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/io/InputStream;->mark(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 342
    .end local v0           #array:[B
    .end local v1           #buffer:[B
    .end local v2           #canMark:Z
    .end local v3           #contentType:Ljava/lang/String;
    .end local v7           #is2:Ljava/io/ByteArrayInputStream;
    .end local v9           #streamSize:I
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 344
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    const-string v10, "Mms/media"

    const-string v11, "Exception caught while calculating gif image duration"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    if-eqz v6, :cond_3

    .line 349
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    move v10, v4

    .line 352
    goto :goto_1

    .line 350
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #canMark:Z
    .restart local v3       #contentType:Ljava/lang/String;
    .restart local v7       #is2:Ljava/io/ByteArrayInputStream;
    .restart local v8       #mMovie:Landroid/graphics/Movie;
    .restart local v9       #streamSize:I
    :catch_1
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    move v10, v4

    .line 352
    goto :goto_1

    .line 347
    .end local v5           #e:Ljava/io/IOException;
    :cond_4
    if-eqz v6, :cond_5

    .line 349
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    move v10, v4

    .line 352
    goto :goto_1

    .line 350
    :catch_2
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    move v10, v4

    .line 352
    goto :goto_1

    .line 347
    .end local v2           #canMark:Z
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #mMovie:Landroid/graphics/Movie;
    .end local v9           #streamSize:I
    :cond_6
    if-eqz v6, :cond_7

    .line 349
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    move v10, v4

    .line 352
    goto :goto_1

    .line 350
    :catch_3
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    move v10, v4

    .line 352
    goto :goto_1

    .line 347
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #is2:Ljava/io/ByteArrayInputStream;
    :cond_8
    if-eqz v6, :cond_9

    .line 349
    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_9
    move v10, v4

    .line 352
    goto :goto_1

    .line 350
    :catch_4
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    move v10, v4

    .line 352
    goto :goto_1

    .line 350
    .end local v3           #contentType:Ljava/lang/String;
    .local v5, e:Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    move v10, v4

    .line 352
    goto :goto_1

    .line 347
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_a

    .line 349
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 352
    :cond_a
    throw v10

    .line 350
    :catch_6
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    move v10, v4

    .line 352
    goto :goto_1
.end method

.method public getMediaResizable()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/mms/model/MediaModel;->mMediaResizeable:Z

    return v0
.end method

.method public getMediaSize()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    return v0
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "Mms/media"

    const-string v1, "MedieModel getUri(): mUri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriWithDrmCheck()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->consumeRights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/drm/mobile2/OMADRMException;

    const-string v1, "Insufficient DRM rights."

    invoke-direct {v0, v1}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasDrmRight()Z
    .locals 3

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/drm/DrmWrapper;->isRightsInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 267
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    .line 272
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected initMediaDuration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 280
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Uri may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    :cond_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 285
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v1, 0x0

    .line 287
    .local v1, duration:I
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 288
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, dur:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 292
    :cond_1
    iput v1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 299
    return-void

    .line 293
    .end local v0           #dur:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 294
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever failed to get duration for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public isAllowedToForward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->isAllowedToForward()Z

    move-result v0

    return v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDrmProtected()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected pauseMusicPlayer()V
    .locals 3

    .prologue
    .line 419
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string v1, "Mms/media"

    const-string v2, "pauseMusicPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v1, "from"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method protected resizeMedia(IJ)V
    .locals 0
    .parameter "byteLimit"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 441
    return-void
.end method

.method public setBegin(I)V
    .locals 1
    .parameter "begin"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 117
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->initMediaDuration()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 137
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/media"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 134
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public setFill(S)V
    .locals 1
    .parameter "fill"

    .prologue
    .line 215
    iput-short p1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 217
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 432
    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 195
    return-void
.end method
