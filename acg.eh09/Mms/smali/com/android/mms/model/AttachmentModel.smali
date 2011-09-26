.class public Lcom/android/mms/model/AttachmentModel;
.super Lcom/android/mms/model/Model;
.source "AttachmentModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mData:[B

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/model/AttachmentModel;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "context"
    .parameter "uri"
    .parameter "notVCal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    .line 85
    iput-object p1, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/android/mms/model/AttachmentModel;->loadAttachmentInfo()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/android/mms/model/AttachmentModel;->mSrc:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    .line 66
    invoke-direct {p0}, Lcom/android/mms/model/AttachmentModel;->readFully()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    .line 67
    invoke-direct {p0}, Lcom/android/mms/model/AttachmentModel;->initMediaSize()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 72
    if-nez p4, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/mms/model/AttachmentModel;->mSrc:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    .line 80
    array-length v0, p4

    iput v0, p0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    .line 81
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

    const-string v7, "Mms/AttachmentModel"

    .line 240
    iget-object v5, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 241
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 243
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 244
    instance-of v5, v4, Ljava/io/FileInputStream;

    if-eqz v5, :cond_2

    .line 246
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 247
    .local v3, f:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/mms/model/AttachmentModel;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v3           #f:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 263
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    :goto_1
    const/4 v5, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 250
    iget v5, p0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/model/AttachmentModel;->mSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 256
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "Mms/AttachmentModel"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    instance-of v5, v2, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_4

    .line 258
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 263
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 267
    :cond_3
    :goto_2
    throw v5

    .line 264
    :catch_1
    move-exception v2

    .line 266
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Mms/AttachmentModel"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 261
    :cond_4
    if-eqz v4, :cond_1

    .line 263
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 264
    :catch_2
    move-exception v2

    .line 266
    const-string v5, "Mms/AttachmentModel"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 264
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 266
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "Mms/AttachmentModel"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private loadAttachmentInfo()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const v10, 0x7f090193

    const/4 v3, 0x0

    const-string v11, "text/x-vCard"

    const-string v9, ".vcf"

    .line 112
    const/4 v7, 0x0

    .line 113
    .local v7, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, scheme:Ljava/lang/String;
    const-string v1, "android.resource"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 154
    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    .line 157
    :cond_2
    iput-object v7, p0, Lcom/android/mms/model/AttachmentModel;->mSrc:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/android/mms/model/AttachmentModel;->readFully()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    .line 159
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    array-length v1, v1

    iput v1, p0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    .line 160
    return-void

    .line 117
    :cond_3
    const-string v1, "file"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 119
    const-string v1, ".vcs"

    invoke-virtual {v7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    const-string v1, "text/x-vCalendar"

    iput-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_4
    const-string v1, ".vnt"

    invoke-virtual {v7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    const-string v1, "text/x-vNote"

    iput-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_5
    const-string v1, ".vcf"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "text/x-vCard"

    iput-object v11, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_6
    const-string v1, "content"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/model/AttachmentModel;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, metadataCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 131
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 132
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 136
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    .line 140
    if-nez v7, :cond_9

    .line 142
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 144
    :cond_9
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    const-string v2, "text/x-vCard"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".vcf"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".vcf"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 136
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private readFully()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-string v10, "IOException caught while closing stream"

    const-string v9, "Mms/AttachmentModel"

    .line 163
    const/4 v6, 0x0

    .line 165
    .local v6, stream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 166
    .local v5, pos:I
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/model/AttachmentModel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 167
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 168
    .local v1, avail:I
    new-array v2, v1, [B

    .line 170
    .local v2, data:[B
    :cond_0
    :goto_0
    array-length v7, v2

    sub-int/2addr v7, v5

    invoke-virtual {v6, v2, v5, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 171
    .local v0, amt:I
    if-gtz v0, :cond_2

    .line 187
    if-eqz v6, :cond_1

    .line 189
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_1
    :goto_1
    return-object v2

    .line 190
    :catch_0
    move-exception v3

    .line 192
    .local v3, e:Ljava/io/IOException;
    const-string v7, "Mms/AttachmentModel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 174
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    add-int/2addr v5, v0

    .line 175
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 176
    array-length v7, v2

    sub-int/2addr v7, v5

    if-le v1, v7, :cond_0

    .line 177
    add-int v7, v5, v1

    new-array v4, v7, [B

    .line 178
    .local v4, newData:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    move-object v2, v4

    goto :goto_0

    .line 182
    .end local v0           #amt:I
    .end local v1           #avail:I
    .end local v2           #data:[B
    .end local v4           #newData:[B
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 184
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "Mms/AttachmentModel"

    const-string v8, "IOException caught while opening or reading stream"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    new-instance v7, Lcom/google/android/mms/MmsException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_3

    .line 189
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 193
    :cond_3
    :goto_2
    throw v7

    .line 190
    :catch_2
    move-exception v3

    .line 192
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "Mms/AttachmentModel"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 215
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/AttachmentModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 218
    .end local v0           #data:[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaSize()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/model/AttachmentModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 1
    .parameter "evt"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/AttachmentModel;->notifyModelChanged(Z)V

    .line 283
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/mms/model/AttachmentModel;->mSrc:Ljava/lang/String;

    .line 287
    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/mms/model/AttachmentModel;->mUri:Landroid/net/Uri;

    .line 226
    return-void
.end method
