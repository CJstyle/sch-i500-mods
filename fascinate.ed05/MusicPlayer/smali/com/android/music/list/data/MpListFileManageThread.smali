.class public Lcom/android/music/list/data/MpListFileManageThread;
.super Ljava/lang/Thread;
.source "MpListFileManageThread.java"


# static fields
.field private static final PLAYLIST_MAX:I = 0x3e8


# instance fields
.field private mAddData:[Lcom/android/music/common/data/MusicAddData;

.field private mChecked:[Z

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIDs:[I

.field private mListType:I

.field private mListView:Lcom/android/music/list/view/AbstractMpListView;

.field private mPlaylistID:I

.field private mSubListType:I


# direct methods
.method public constructor <init>(IIILandroid/database/Cursor;[ZLandroid/content/Context;Landroid/os/Handler;Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 1
    .parameter "listType"
    .parameter "subListType"
    .parameter "playlistID"
    .parameter "cursor"
    .parameter "checked"
    .parameter "context"
    .parameter "handler"
    .parameter "listView"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListType:I

    .line 50
    iput p2, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    .line 51
    iput-object p4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    .line 52
    iput-object p5, p0, Lcom/android/music/list/data/MpListFileManageThread;->mChecked:[Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/data/MpListFileManageThread;->mGroupItems:Ljava/util/ArrayList;

    .line 54
    iput-object p6, p0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    .line 55
    iput p3, p0, Lcom/android/music/list/data/MpListFileManageThread;->mPlaylistID:I

    .line 56
    iput-object p7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p8, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 58
    return-void
.end method

.method private deleteFiles(Lcom/android/music/common/data/MpListFilter;)I
    .locals 21
    .parameter "filter"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    move-object v7, v0

    array-length v7, v7

    new-array v13, v7, [Lcom/android/music/common/data/MusicAddData;

    .line 196
    .local v13, deleteData:[Lcom/android/music/common/data/MusicAddData;
    const/4 v11, 0x0

    .line 197
    .local v11, count:I
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v18

    .line 198
    .local v18, musicDB:Lcom/android/music/common/data/MusicDB;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mListType:I

    move v7, v0

    sparse-switch v7, :sswitch_data_0

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    move-object v7, v0

    array-length v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    move-object v8, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[I)I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    move-object v7, v0

    array-length v11, v7

    .line 297
    :goto_0
    return v11

    .line 208
    :sswitch_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v20, where:Ljava/lang/StringBuilder;
    const-string v7, "_id IN("

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    move-object v7, v0

    array-length v7, v7

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    move-object v7, v0

    aget v7, v7, v17

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_0

    .line 214
    const-string v7, ","

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 217
    :cond_1
    const-string v7, ")"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "_data_hashcode"

    aput-object v8, v6, v7

    .line 223
    .local v6, cols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 224
    .local v4, mContentResolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mListType:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v7, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v5

    .line 226
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 229
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    const/4 v11, 0x0

    .line 231
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    .line 232
    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 233
    .local v19, name:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 236
    .local v16, f:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 237
    const-string v7, "Delete"

    const-string v8, "Failed to delete file %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v19, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    new-instance v7, Lcom/android/music/common/data/MusicAddData;

    invoke-direct {v7}, Lcom/android/music/common/data/MusicAddData;-><init>()V

    aput-object v7, v13, v11

    .line 241
    aget-object v7, v13, v11

    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 242
    aget-object v7, v13, v11

    const/4 v8, 0x2

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 243
    add-int/lit8 v11, v11, 0x1

    .line 245
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 246
    :catch_0
    move-exception v7

    move-object v15, v7

    .line 247
    .local v15, ex:Ljava/lang/SecurityException;
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 253
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v15           #ex:Ljava/lang/SecurityException;
    .end local v16           #f:Ljava/io/File;
    .end local v19           #name:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v14, v7

    .line 261
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "MpListFileManagerThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 266
    .local v10, am:Landroid/app/ActivityManager;
    const-string v7, "com.android.music"

    invoke-virtual {v10, v7}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_3
    const-string v7, "content://media"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 251
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 252
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 268
    .end local v12           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v7

    move-object v14, v7

    .line 277
    .local v14, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 281
    .restart local v10       #am:Landroid/app/ActivityManager;
    const-string v7, "com.android.music"

    invoke-virtual {v10, v7}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v14           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3
    move-exception v7

    move-object v14, v7

    .line 284
    .local v14, e:Ljava/lang/UnsupportedOperationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 287
    .restart local v10       #am:Landroid/app/ActivityManager;
    const-string v7, "com.android.music"

    invoke-virtual {v10, v7}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method private getIDs()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v3, trues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mChecked:[Z

    array-length v2, v4

    .line 64
    .local v2, size:I
    iget v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    if-ne v4, v5, :cond_1

    move v1, v5

    .line 66
    .local v1, real:I
    :goto_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 67
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mChecked:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #real:I
    :cond_1
    move v1, v10

    .line 64
    goto :goto_0

    .line 70
    .restart local v0       #i:I
    .restart local v1       #real:I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 71
    iget v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 72
    :cond_3
    new-array v4, v2, [Lcom/android/music/common/data/MusicAddData;

    iput-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    .line 76
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_8

    .line 77
    iget-object v5, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 79
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v5, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Lcom/android/music/list/view/AbstractMpListView;->canDeleteItem(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 80
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    aput v9, v4, v0

    .line 76
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 74
    :cond_5
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    goto :goto_2

    .line 83
    :cond_6
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    if-eqz v4, :cond_7

    .line 84
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    iget-object v5, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListType:I

    iget v8, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    invoke-static {v7, v8}, Lcom/android/music/common/util/ListType;->getIDKeyColumnByAction(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v4, v0

    goto :goto_4

    .line 86
    :cond_7
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    if-eqz v4, :cond_4

    .line 87
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    new-instance v5, Lcom/android/music/common/data/MusicAddData;

    invoke-direct {v5}, Lcom/android/music/common/data/MusicAddData;-><init>()V

    aput-object v5, v4, v0

    .line 88
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListType:I

    iget v8, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    invoke-static {v7, v8}, Lcom/android/music/common/util/ListType;->getIDKeyColumnByAction(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 90
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/list/data/MpListFileManageThread;->mCursor:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iput v5, v4, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    goto :goto_4

    .line 100
    :cond_8
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v4, :cond_9

    .line 101
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mChecked:[Z

    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([ZZ)V

    .line 102
    iget-object v4, p0, Lcom/android/music/list/data/MpListFileManageThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    :cond_9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 109
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v6

    .line 111
    .local v6, musicDB:Lcom/android/music/common/data/MusicDB;
    invoke-direct {p0}, Lcom/android/music/list/data/MpListFileManageThread;->getIDs()V

    .line 114
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 115
    .local v5, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, bundle:Landroid/os/Bundle;
    iget v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    iput v7, v5, Landroid/os/Message;->what:I

    .line 119
    const/4 v4, 0x0

    .line 121
    .local v4, insertCount:I
    iget v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mSubListType:I

    packed-switch v7, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    array-length v4, v7

    .line 124
    new-instance v3, Lcom/android/music/common/data/MpListFilter;

    const/16 v7, 0xd

    const/4 v8, 0x1

    invoke-direct {v3, v7, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 125
    .local v3, filter:Lcom/android/music/common/data/MpListFilter;
    iget-object v7, v3, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/music/list/data/MpListFileManageThread;->mPlaylistID:I

    const/4 v12, 0x0

    invoke-direct {v9, v3, v10, v11, v12}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v9, v7, v8

    .line 127
    const/16 v7, 0x3e8

    iget v8, p0, Lcom/android/music/list/data/MpListFileManageThread;->mPlaylistID:I

    invoke-virtual {v6, v8}, Lcom/android/music/common/data/MusicDB;->getItemCountInPlaylist(I)I

    move-result v8

    sub-int v2, v7, v8

    .line 129
    .local v2, empty:I
    if-ge v2, v4, :cond_1

    .line 130
    move v4, v2

    .line 131
    const-string v7, "PlaylistFull"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    :cond_1
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    invoke-virtual {v6, v3, v4, v7}, Lcom/android/music/common/data/MusicDB;->addItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I

    .line 137
    const-string v7, "CallFromThread"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v7, "ThreadItemCount"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 140
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 143
    .end local v2           #empty:I
    .end local v3           #filter:Lcom/android/music/common/data/MpListFilter;
    :pswitch_1
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    array-length v4, v7

    .line 144
    new-instance v3, Lcom/android/music/common/data/MpListFilter;

    const/16 v7, 0xd

    const/4 v8, 0x1

    invoke-direct {v3, v7, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 145
    .restart local v3       #filter:Lcom/android/music/common/data/MpListFilter;
    iget-object v7, v3, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/music/list/data/MpListFileManageThread;->mPlaylistID:I

    const/4 v12, 0x0

    invoke-direct {v9, v3, v10, v11, v12}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v9, v7, v8

    .line 148
    const/16 v7, 0x3e8

    iget v8, p0, Lcom/android/music/list/data/MpListFileManageThread;->mPlaylistID:I

    invoke-virtual {v6, v8}, Lcom/android/music/common/data/MusicDB;->getItemCountInPlaylist(I)I

    move-result v8

    sub-int v2, v7, v8

    .line 149
    .restart local v2       #empty:I
    if-ge v2, v4, :cond_2

    .line 150
    move v4, v2

    .line 151
    const-string v7, "PlaylistFull"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    :cond_2
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mAddData:[Lcom/android/music/common/data/MusicAddData;

    invoke-virtual {v6, v3, v4, v7}, Lcom/android/music/common/data/MusicDB;->addItems(Lcom/android/music/common/data/MpListFilter;I[Lcom/android/music/common/data/MusicAddData;)I

    .line 157
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 158
    const-string v7, "CallFromThread"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string v7, "ThreadItemCount"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 161
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 167
    .end local v2           #empty:I
    .end local v3           #filter:Lcom/android/music/common/data/MpListFilter;
    :pswitch_2
    new-instance v3, Lcom/android/music/common/data/MpListFilter;

    iget v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListType:I

    const/4 v8, 0x1

    invoke-direct {v3, v7, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 168
    .restart local v3       #filter:Lcom/android/music/common/data/MpListFilter;
    iget-object v7, v3, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/music/list/data/MpListFileManageThread;->mPlaylistID:I

    const/4 v12, 0x0

    invoke-direct {v9, v3, v10, v11, v12}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v9, v7, v8

    .line 170
    invoke-direct {p0, v3}, Lcom/android/music/list/data/MpListFileManageThread;->deleteFiles(Lcom/android/music/common/data/MpListFilter;)I

    move-result v1

    .line 173
    .local v1, count:I
    const-string v7, "CallFromThread"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v7, "ThreadItemCount"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 176
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 179
    .end local v1           #count:I
    .end local v3           #filter:Lcom/android/music/common/data/MpListFilter;
    :pswitch_3
    new-instance v3, Lcom/android/music/common/data/MpListFilter;

    iget v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mListType:I

    const/4 v8, 0x1

    invoke-direct {v3, v7, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 180
    .restart local v3       #filter:Lcom/android/music/common/data/MpListFilter;
    iget-object v7, v3, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/music/list/data/MpListFileManageThread;->mPlaylistID:I

    const/4 v12, 0x0

    invoke-direct {v9, v3, v10, v11, v12}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v9, v7, v8

    .line 182
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[I)I

    .line 185
    const-string v7, "CallFromThread"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const-string v7, "ThreadItemCount"

    iget-object v8, p0, Lcom/android/music/list/data/MpListFileManageThread;->mIDs:[I

    array-length v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 188
    iget-object v7, p0, Lcom/android/music/list/data/MpListFileManageThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
