.class public Lcom/sec/android/app/videoplayer/db/VideoBookmark;
.super Ljava/lang/Object;
.source "VideoBookmark.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/db/IVideoSubList;


# static fields
.field private static mInstance:Lcom/sec/android/app/videoplayer/db/VideoBookmark;


# instance fields
.field mBookmarkTimetbl:[Ljava/lang/String;

.field mSelectCols:[Ljava/lang/String;

.field mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

.field public mVideoId:J

.field public mtagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    .line 75
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "video_uri"

    aput-object v1, v0, v4

    const-string v1, "total_count"

    aput-object v1, v0, v5

    const-string v1, "videoId"

    aput-object v1, v0, v6

    const-string v1, "tagl"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tag2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tag3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tag4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tag5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tag6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tag7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tag8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tag9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "tag10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mSelectCols:[Ljava/lang/String;

    .line 93
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tagl"

    aput-object v1, v0, v3

    const-string v1, "tag2"

    aput-object v1, v0, v4

    const-string v1, "tag3"

    aput-object v1, v0, v5

    const-string v1, "tag4"

    aput-object v1, v0, v6

    const-string v1, "tag5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tag6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tag7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tag8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tag9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tag10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mBookmarkTimetbl:[Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-direct {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setTable(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setIdColumn(Ljava/lang/String;)V

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoId:J

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sec/android/app/videoplayer/db/VideoBookmark;
    .locals 2
    .parameter "db"

    .prologue
    .line 123
    const-class v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoBookmark;

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Lcom/sec/android/app/videoplayer/db/VideoBookmark;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/db/VideoBookmark;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoBookmark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoBookmark;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateTag(Landroid/database/Cursor;JLjava/util/ArrayList;I)I
    .locals 10
    .parameter "cursor"
    .parameter "videoId"
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 293
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, -0x1

    .line 294
    .local v3, ret:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "total_count"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v6, "_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 302
    const-string v6, "VideoBookmark"

    const-string v7, "updateTag() -  The list size is 0."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v6, 0x0

    .line 324
    .end local p1
    :goto_0
    return v6

    .line 306
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .end local p1
    .local v1, i:I
    :goto_1
    if-ge v1, p5, :cond_1

    .line 308
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mBookmarkTimetbl:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    :cond_1
    move v2, p5

    .local v2, j:I
    :goto_2
    const/16 v6, 0xa

    if-ge v2, v6, :cond_2

    .line 313
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mBookmarkTimetbl:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v5, where:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "videoId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "bookmark"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_3
    move v6, v3

    .line 324
    goto :goto_0

    .line 321
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 322
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v6, "VideoBookmark"

    const-string v7, "updateTag() - SQLiteConstraintException."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public add(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;->add(Landroid/content/ContentValues;)V

    .line 220
    return-void
.end method

.method public addBookmark(Ljava/lang/String;JJ)Z
    .locals 20
    .parameter "uri"
    .parameter "videoId"
    .parameter "curTime"

    .prologue
    .line 162
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v19, where:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    move-object v4, v0

    const-string v5, "bookmark"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mSelectCols:[Ljava/lang/String;

    move-object v6, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/db/DbExec;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 168
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 170
    :cond_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v18, values:Landroid/content/ContentValues;
    const-string v4, "video_uri"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "total_count"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v4, "tagl"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string v4, "videoId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->add(Landroid/content/ContentValues;)V

    .line 211
    .end local p1
    :goto_0
    if-eqz v12, :cond_1

    .line 212
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_1
    const/4 v4, 0x1

    .end local v18           #values:Landroid/content/ContentValues;
    :goto_1
    return v4

    .line 179
    .restart local p1
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 183
    .local v14, id:J
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 184
    .local v17, totalCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 186
    const/4 v13, 0x0

    .end local p1
    .local v13, i:I
    :goto_2
    const/16 v4, 0xa

    if-ge v13, v4, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    move-object v4, v0

    add-int/lit8 v5, v13, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p4

    if-nez v4, :cond_4

    .line 192
    const-string v4, "VideoBookmark"

    const-string v5, "addBookmark : already time is added."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz v12, :cond_3

    .line 195
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 186
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 201
    :cond_5
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .restart local v18       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mBookmarkTimetbl:[Ljava/lang/String;

    move-object v4, v0

    aget-object v4, v4, v17

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    add-int/lit8 v17, v17, 0x1

    .line 205
    const-string v4, "total_count"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->update(JLandroid/content/ContentValues;)I

    move-result v16

    .line 208
    .local v16, ret:I
    const-string v4, "VideoBookmark"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBookmark() - update result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteAll()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public deleteBookmark(JLjava/util/ArrayList;)I
    .locals 20
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 224
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v18, where:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    move-object v2, v0

    const-string v3, "bookmark"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mSelectCols:[Ljava/lang/String;

    move-object v4, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/videoplayer/db/DbExec;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 231
    .local v3, c:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 233
    :cond_0
    if-eqz v3, :cond_1

    .line 234
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    const/4 v2, 0x0

    .line 283
    .end local v3           #c:Landroid/database/Cursor;
    :goto_0
    return v2

    .line 240
    .restart local v3       #c:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 242
    .local v7, totlaCnt:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 244
    .local v10, delete_cnt:I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v6, tag:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    move-object v6, v0

    .line 247
    if-ne v10, v7, :cond_4

    .line 250
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v19, whereClause:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoId = "

    .end local v3           #c:Landroid/database/Cursor;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "bookmark"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 253
    .local v13, ret:I
    const-string v2, "VideoBookmark"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteBookmark() - delete result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v13           #ret:I
    .end local v19           #whereClause:Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 257
    .restart local v3       #c:Landroid/database/Cursor;
    :cond_4
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v10, :cond_7

    .line 259
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_6

    .line 261
    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 262
    .local v14, t1:J
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 267
    .local v16, t2:J
    cmp-long v2, v14, v16

    if-nez v2, :cond_5

    .line 269
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 270
    add-int/lit8 v12, v12, -0x1

    .line 271
    const/4 v2, 0x1

    sub-int/2addr v7, v2

    .line 259
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 257
    .end local v14           #t1:J
    .end local v16           #t2:J
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v12           #j:I
    :cond_7
    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    .line 276
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->updateTag(Landroid/database/Cursor;JLjava/util/ArrayList;I)I

    .line 278
    if-eqz v3, :cond_3

    .line 279
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getBookmarkList(Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 13
    .parameter "uri"
    .parameter "videoId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v12, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "bookmark"

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mSelectCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/db/DbExec;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 335
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 337
    :cond_0
    if-eqz v8, :cond_1

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_1
    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    .line 344
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 351
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v0, 0xa

    if-ge v9, v0, :cond_4

    .line 353
    add-int/lit8 v0, v9, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 355
    .local v10, tag:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 359
    .end local v10           #tag:J
    :cond_4
    if-eqz v8, :cond_5

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mtagList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getList()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, c:Landroid/database/Cursor;
    return-object v0
.end method

.method public getTotalCnt(J)I
    .locals 11
    .parameter "videoId"

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v10, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "bookmark"

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mSelectCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/videoplayer/db/DbExec;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 139
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 141
    :cond_0
    if-eqz v8, :cond_1

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 147
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 150
    .local v9, totalCnt:I
    if-eqz v8, :cond_3

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_3
    const-string v0, "VideoBookmark"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalCnt() - Enter. count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 155
    goto :goto_0
.end method

.method public update(JLandroid/content/ContentValues;)I
    .locals 1
    .parameter "id"
    .parameter "values"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoBookmark;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/db/DbExec;->update(JLandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
