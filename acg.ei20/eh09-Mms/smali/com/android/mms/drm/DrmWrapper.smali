.class public Lcom/android/mms/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mData:[B

.field private final mDataUri:Landroid/net/Uri;

.field private mDecryptedData:[B

.field private mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

.field public mDrmFileName:Ljava/lang/String;

.field public mDrmFilePath:Ljava/lang/String;

.field private mDrmManager:Landroid/drm/mobile2/OMADRMManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 26
    .parameter "drmContentType"
    .parameter "context"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    .line 78
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 79
    const-string v4, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : mDataUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    .line 82
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v11, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v22, 0x0

    .line 86
    .local v22, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 87
    .local v5, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 89
    .local v13, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const-string v4, "_data"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    .line 91
    const-string v4, "name"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 93
    const-string v4, "cl"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    .line 95
    :cond_0
    const-string v4, "DrmWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrmWrapper : DRM filepath ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v4, "DrmWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrmWrapper : DRM fileName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    move-object v4, v0

    if-nez v4, :cond_4

    .line 98
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content-Type or data may not be null."

    .end local v5           #cr:Landroid/content/ContentResolver;
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_2

    .line 192
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_2
    if-eqz v22, :cond_3

    .line 197
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :cond_3
    :goto_0
    throw v4

    .line 102
    .restart local v5       #cr:Landroid/content/ContentResolver;
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 105
    const/16 v16, 0x0

    .line 106
    .local v16, extension:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v4, v0

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    .line 107
    .local v21, index:I
    if-ltz v21, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v4, v0

    add-int/lit8 v6, v21, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 110
    :cond_5
    const-string v4, "dm"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 111
    const/4 v14, 0x0

    .line 113
    .local v14, destfile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Landroid/drm/mobile2/OMADRMManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 115
    if-eqz v14, :cond_d

    .line 117
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v7, values:Landroid/content/ContentValues;
    const/16 v24, 0x0

    .line 119
    .local v24, value1:Ljava/lang/Object;
    const/16 v25, 0x0

    .line 120
    .local v25, value2:Ljava/lang/Object;
    move-object/from16 v24, v14

    .line 121
    .local v24, value1:Ljava/lang/String;
    const-string v4, "cl"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 122
    .local v19, fileName:Ljava/lang/String;
    const/16 v20, 0x0

    .line 123
    .local v20, fileNameExtension:Ljava/lang/String;
    if-eqz v19, :cond_8

    .line 124
    const/16 v4, 0x2e

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 125
    .local v17, extensionIndex:I
    if-ltz v17, :cond_6

    .line 126
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 129
    :cond_6
    const-string v4, "dm"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 130
    const-string v20, "dcf"

    .line 132
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 135
    .end local v17           #extensionIndex:I
    :cond_8
    move-object/from16 v25, v19

    .line 136
    .local v25, value2:Ljava/lang/String;
    const-string v4, "_data"

    check-cast v24, Ljava/lang/String;

    .end local v24           #value1:Ljava/lang/String;
    move-object v0, v7

    move-object v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "cl"

    check-cast v25, Ljava/lang/String;

    .end local v25           #value2:Ljava/lang/String;
    move-object v0, v7

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v18, file:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 142
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    .line 144
    const-string v4, "DrmWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " destfile path!!"

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v22

    .line 148
    const/16 v4, 0x100

    new-array v12, v4, [B

    .line 149
    .local v12, buffer:[B
    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v23

    .line 150
    .local v23, len:I
    :goto_1
    if-ltz v23, :cond_9

    .line 151
    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, v12

    move v2, v4

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 152
    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v23

    goto :goto_1

    .line 154
    :cond_9
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 183
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v12           #buffer:[B
    .end local v14           #destfile:Ljava/lang/String;
    .end local v18           #file:Ljava/io/File;
    .end local v19           #fileName:Ljava/lang/String;
    .end local v20           #fileNameExtension:Ljava/lang/String;
    .end local v23           #len:I
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/drm/mobile2/OMADRMManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 184
    const-string v4, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " register success!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/drm/DrmWrapper;->installRights()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    if-eqz v13, :cond_b

    .line 192
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_b
    if-eqz v22, :cond_c

    .line 197
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 204
    :cond_c
    :goto_4
    return-void

    .line 156
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v14       #destfile:Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v4, "DrmWrapper"

    const-string v5, " destfile null !!"

    .end local v5           #cr:Landroid/content/ContentResolver;
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 158
    .end local v14           #destfile:Ljava/lang/String;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    :cond_e
    const-string v4, "dcf"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 159
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .restart local v7       #values:Landroid/content/ContentValues;
    const/16 v25, 0x0

    .line 161
    .local v25, value2:Ljava/lang/Object;
    const-string v4, "cl"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 162
    .restart local v19       #fileName:Ljava/lang/String;
    const/16 v20, 0x0

    .line 164
    .restart local v20       #fileNameExtension:Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 165
    const/16 v4, 0x2e

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 167
    .restart local v17       #extensionIndex:I
    if-ltz v17, :cond_f

    .line 168
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 171
    :cond_f
    const-string v4, "dm"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 172
    const-string v20, "dcf"

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 175
    move-object/from16 v25, v19

    .line 176
    .local v25, value2:Ljava/lang/String;
    const-string v4, "cl"

    check-cast v25, Ljava/lang/String;

    .end local v25           #value2:Ljava/lang/String;
    move-object v0, v7

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 186
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v17           #extensionIndex:I
    .end local v19           #fileName:Ljava/lang/String;
    .end local v20           #fileNameExtension:Ljava/lang/String;
    :cond_10
    const-string v4, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " register fail!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 198
    :catch_0
    move-exception v15

    .line 199
    .local v15, e:Ljava/io/IOException;
    const-string v4, "DrmWrapper"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 198
    .end local v15           #e:Ljava/io/IOException;
    .end local v16           #extension:Ljava/lang/String;
    .end local v21           #index:I
    :catch_1
    move-exception v15

    .line 199
    .restart local v15       #e:Ljava/io/IOException;
    const-string v5, "DrmWrapper"

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getPermission()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermission : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    const/4 v1, 0x1

    .line 230
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private installRights()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "DrmWrapper"

    const-string v1, "private installRights : hasValidRights() == SISO_DRM_RESULT_SUCCESS."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/drm/DrmWrapper;->isRightsInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeRights()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "DrmWrapper"

    .line 270
    const-string v0, "DrmWrapper"

    const-string v0, "consumeRights : DRM consumeRightStart~!!"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isGetRightFromBrowser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "DrmWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consumeRights : DRM filepath ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile2/OMADRMManager;->consumeDrmRights(Ljava/lang/String;I)I

    move v0, v3

    .line 289
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_1
    const-string v0, "DrmWrapper"

    const-string v0, "consumeRights : mDrmConstrintsInfo is null"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 285
    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile2/OMADRMManager;->consumeDrmRights(Ljava/lang/String;I)I

    move v0, v3

    .line 289
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    const-string v0, "DrmWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentType : DRM filepath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDecryptedData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isGetRightFromBrowser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v1, v1, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDecryptedData : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/drm/mobile2/OMADRMManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 248
    .local v0, decryptedData:[B
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 259
    .end local v0           #decryptedData:[B
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v5

    .line 251
    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/drm/mobile2/OMADRMManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    .line 254
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 256
    .restart local v0       #decryptedData:[B
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 257
    goto :goto_0

    .end local v0           #decryptedData:[B
    :cond_3
    move-object v1, v5

    .line 259
    goto :goto_0
.end method

.method public getOriginalData()[B
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 371
    const-string v0, "DrmWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmWrapper : mDataUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAllowedToForward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 340
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v0

    .line 342
    .local v0, fileinfo:[I
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type of file is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    const/4 v1, 0x3

    aget v2, v0, v4

    if-eq v1, v2, :cond_0

    .line 345
    const/4 v1, 0x0

    .line 347
    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public isGetRightFromBrowser()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 351
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v0

    .line 352
    .local v0, fileinfo:[I
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type of file is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    const/4 v1, 0x3

    aget v2, v0, v4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    const/4 v1, 0x2

    aget v2, v0, v4

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v4

    .line 357
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRightsInstalled(Ljava/lang/String;)Z
    .locals 7
    .parameter "drmFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "DrmWrapper"

    .line 300
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    if-nez v1, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isGetRightFromBrowser()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v6

    .line 330
    :goto_0
    return v1

    .line 305
    :cond_0
    :try_start_0
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRightsInstalled : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/OMADRMManager;->queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_1
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v1, v1, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "DrmWrapper"

    const-string v1, "isRightsInstalled : get mDecryptedData"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/drm/mobile2/OMADRMManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    move v1, v6

    .line 314
    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 308
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DrmWrapper"

    const-string v1, "drm exception"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 317
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-nez v1, :cond_2

    .line 318
    const-string v1, "DrmWrapper"

    const-string v1, "isRightsInstalled : mDrmConstrintsInfo is null"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 319
    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v1, v1, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 324
    const-string v1, "DrmWrapper"

    const-string v1, "isRightsInstalled : drmArrayRightsObj.size() is 0"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 325
    goto :goto_0

    :cond_3
    move v1, v5

    .line 330
    goto :goto_0
.end method
