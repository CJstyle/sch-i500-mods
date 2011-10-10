.class public Lcom/android/mms/model/VideoModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "VideoModel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/android/mms/model/VideoModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    .line 55
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
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v2, "video"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 60
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
    .line 64
    const-string v2, "video"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 65
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 17
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 70
    .local v16, scheme:Ljava/lang/String;
    const-string v2, "content"

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 72
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 74
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 76
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, path:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 79
    const-string v2, "mime_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Type of media is unknown."

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v15           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 94
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v15       #path:Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    const-string v3, "video/mp4"

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    move-object v2, v0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 96
    .local v13, index:I
    const/4 v2, -0x1

    if-eq v2, v13, :cond_2

    .line 98
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    move-object v2, v0

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, extension:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3gp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3gpp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3g2"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    :cond_1
    const-string v2, "video/3gpp"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    .end local v12           #extension:Ljava/lang/String;
    .end local v13           #index:I
    :cond_2
    :goto_0
    :try_start_3
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    const-string v2, "Mms/media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New VideoModel created: mSrc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mContentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 177
    .end local v9           #c:Landroid/database/Cursor;
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/VideoModel;->initMediaDuration()V

    .line 178
    return-void

    .line 120
    .end local v15           #path:Ljava/lang/String;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_5
    :try_start_4
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_6
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v9           #c:Landroid/database/Cursor;
    :cond_7
    const-string v2, "file"

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 132
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v14

    .line 134
    .local v14, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 135
    .restart local v15       #path:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 136
    .restart local v12       #extension:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 137
    const/16 v2, 0x2e

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 138
    .local v10, dotPos:I
    if-ltz v10, :cond_8

    .line 139
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 142
    .end local v10           #dotPos:I
    :cond_8
    const/16 v2, 0x2f

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 143
    invoke-virtual {v14, v12}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 148
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Type of media is unknown."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    const-string v3, "video/mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    move-object v2, v0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 157
    .restart local v13       #index:I
    const/4 v2, -0x1

    if-eq v2, v13, :cond_4

    .line 159
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    move-object v2, v0

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, ext:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "3gp"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "3gpp"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "3g2"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    :cond_a
    const-string v2, "video/3gpp"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 166
    .end local v11           #ext:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 175
    .end local v12           #extension:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    .end local v15           #path:Ljava/lang/String;
    :cond_b
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v13       #index:I
    .restart local v15       #path:Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_0
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
    .line 216
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 217
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V

    .line 218
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
    .line 221
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 222
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkVideoCreationMode(Ljava/lang/String;I)V

    .line 223
    return-void
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 7
    .parameter "evt"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 182
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, evtType:Ljava/lang/String;
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "Mms/media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VideoModel] handleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 188
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 193
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->pauseMusicPlayer()V

    .line 195
    iput-boolean v5, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 210
    .end local p1
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/VideoModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 211
    invoke-virtual {p0, v6}, Lcom/android/mms/model/VideoModel;->notifyModelChanged(Z)V

    .line 212
    return-void

    .line 196
    .restart local p1
    :cond_2
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 198
    iget-short v2, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v2, v5, :cond_1

    .line 199
    iput-boolean v6, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 201
    :cond_3
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 203
    iput-boolean v5, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 204
    :cond_4
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 206
    check-cast p1, Lcom/android/mms/dom/events/EventImpl;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    .line 207
    iput-boolean v5, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method
