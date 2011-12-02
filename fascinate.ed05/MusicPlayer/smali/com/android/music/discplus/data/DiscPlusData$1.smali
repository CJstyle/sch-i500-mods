.class Lcom/android/music/discplus/data/DiscPlusData$1;
.super Ljava/lang/Object;
.source "DiscPlusData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/data/DiscPlusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/data/DiscPlusData;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/data/DiscPlusData;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 51

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    if-nez v5, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$100(Lcom/android/music/discplus/data/DiscPlusData;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$002(Lcom/android/music/discplus/data/DiscPlusData;Lcom/android/music/common/data/MusicDB;)Lcom/android/music/common/data/MusicDB;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    if-nez v5, :cond_0

    .line 559
    :goto_0
    return-void

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$100(Lcom/android/music/discplus/data/DiscPlusData;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a006b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$202(Lcom/android/music/discplus/data/DiscPlusData;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 267
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    .line 268
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 277
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 279
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 281
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 284
    :cond_2
    const/16 v29, 0x0

    .line 285
    .local v29, cursor:Landroid/database/Cursor;
    const/16 v46, 0x0

    .line 287
    .local v46, settingMenuListCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    move/from16 v50, v0

    .line 288
    .local v50, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move/from16 v1, v50

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 290
    .local v40, lCursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    move/from16 v0, v50

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v40

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v29

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$100(Lcom/android/music/discplus/data/DiscPlusData;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v45

    .line 295
    .local v45, setting:Ljava/lang/String;
    new-instance v48, Ljava/util/StringTokenizer;

    const-string v5, "|"

    move-object/from16 v0, v48

    move-object/from16 v1, v45

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v48, strToken:Ljava/util/StringTokenizer;
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v41, musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    invoke-virtual/range {v48 .. v48}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 299
    invoke-virtual/range {v48 .. v48}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v49

    .line 300
    .local v49, token:Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    .end local v29           #cursor:Landroid/database/Cursor;
    .end local v40           #lCursor:Landroid/database/Cursor;
    .end local v41           #musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v45           #setting:Ljava/lang/String;
    .end local v46           #settingMenuListCount:I
    .end local v48           #strToken:Ljava/util/StringTokenizer;
    .end local v49           #token:Ljava/lang/String;
    .end local v50           #type:I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 273
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 274
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 275
    monitor-exit v5

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 281
    :catchall_2
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    .line 303
    .restart local v29       #cursor:Landroid/database/Cursor;
    .restart local v40       #lCursor:Landroid/database/Cursor;
    .restart local v41       #musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v45       #setting:Ljava/lang/String;
    .restart local v46       #settingMenuListCount:I
    .restart local v48       #strToken:Ljava/util/StringTokenizer;
    .restart local v50       #type:I
    :cond_4
    invoke-static/range {v41 .. v41}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 304
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 305
    .local v42, nMusicMenuIDCount:I
    const/16 v35, 0x9

    .line 307
    .local v35, iListID:I
    const/16 v34, -0x1

    .local v34, i:I
    :goto_3
    move/from16 v0, v34

    move/from16 v1, v42

    if-ge v0, v1, :cond_8

    .line 308
    const/4 v5, -0x1

    move/from16 v0, v34

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 309
    move-object/from16 v0, v41

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 312
    :cond_5
    const/16 v5, 0x9

    move/from16 v0, v35

    move v1, v5

    if-lt v0, v1, :cond_6

    const/16 v5, 0xc

    move/from16 v0, v35

    move v1, v5

    if-gt v0, v1, :cond_6

    .line 313
    add-int/lit8 v46, v46, 0x1

    .line 307
    :cond_6
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 317
    .end local v34           #i:I
    .end local v35           #iListID:I
    .end local v41           #musicMenuIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v42           #nMusicMenuIDCount:I
    .end local v45           #setting:Ljava/lang/String;
    .end local v48           #strToken:Ljava/util/StringTokenizer;
    :cond_7
    move-object/from16 v29, v40

    .line 321
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->access$300(Lcom/android/music/discplus/data/DiscPlusData;Landroid/database/Cursor;)I

    move-result v30

    .line 322
    .local v30, cursorCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object/from16 v0, v29

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->access$400(Lcom/android/music/discplus/data/DiscPlusData;I)V

    .line 324
    if-lez v30, :cond_c

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int v26, v5, v6

    .line 326
    .local v26, alphabetArraryLen:I
    move/from16 v28, v26

    .line 327
    .local v28, alphabetLastIndex:I
    const/4 v13, 0x0

    .line 330
    .local v13, startDegree:F
    const/16 v33, -0x1

    .line 331
    .local v33, firstCursorIndex:I
    const/16 v32, -0x1

    .line 333
    .local v32, firstAlphabetIndex:I
    const/16 v47, 0x0

    .line 334
    .local v47, strOrder:Ljava/lang/String;
    const/4 v8, 0x0

    .line 336
    .local v8, idxAlphabet:Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Lcom/android/music/common/util/ListType;->getDiscPlusViewTypeOrderIndexByTitle(I)I

    move-result v44

    .line 339
    .local v44, orderIndex:I
    move/from16 v34, v46

    .restart local v34       #i:I
    :goto_4
    move/from16 v0, v34

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v5, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_d

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 342
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v6

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 344
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 350
    const/16 v39, 0x0

    .local v39, j:I
    :goto_5
    move/from16 v0, v39

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v50

    move-object/from16 v2, v47

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/discplus/data/DiscPlusData;->access$600(Lcom/android/music/discplus/data/DiscPlusData;ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 353
    move/from16 v33, v34

    .line 354
    move/from16 v32, v39

    .line 359
    :cond_9
    const/4 v5, -0x1

    move/from16 v0, v33

    move v1, v5

    if-eq v0, v1, :cond_f

    const/4 v5, -0x1

    move/from16 v0, v32

    move v1, v5

    if-eq v0, v1, :cond_f

    .line 364
    .end local v39           #j:I
    :cond_a
    const/4 v5, -0x1

    move/from16 v0, v33

    move v1, v5

    if-eq v0, v1, :cond_b

    const/4 v5, -0x1

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_11

    .line 365
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 366
    const/4 v5, 0x1

    sub-int v7, v30, v5

    .line 367
    .local v7, endposition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_10

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v11

    .line 369
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v12, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x43b4

    invoke-direct/range {v5 .. v10}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 558
    .end local v7           #endposition:I
    .end local v8           #idxAlphabet:Ljava/lang/String;
    .end local v13           #startDegree:F
    .end local v26           #alphabetArraryLen:I
    .end local v28           #alphabetLastIndex:I
    .end local v32           #firstAlphabetIndex:I
    .end local v33           #firstCursorIndex:I
    .end local v34           #i:I
    .end local v44           #orderIndex:I
    .end local v47           #strOrder:Ljava/lang/String;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 344
    .restart local v8       #idxAlphabet:Ljava/lang/String;
    .restart local v13       #startDegree:F
    .restart local v26       #alphabetArraryLen:I
    .restart local v28       #alphabetLastIndex:I
    .restart local v32       #firstAlphabetIndex:I
    .restart local v33       #firstCursorIndex:I
    .restart local v34       #i:I
    .restart local v44       #orderIndex:I
    .restart local v47       #strOrder:Ljava/lang/String;
    :catchall_3
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v6

    .line 346
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 350
    .restart local v39       #j:I
    :cond_e
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_5

    .line 339
    :cond_f
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_4

    .line 370
    .end local v39           #j:I
    .restart local v7       #endposition:I
    :catchall_4
    move-exception v5

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v5

    .line 372
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 378
    .end local v7           #endposition:I
    :cond_11
    const/16 v38, 0x0

    .line 379
    .local v38, isStart:Z
    move/from16 v27, v32

    .line 380
    .local v27, alphabetIndex:I
    const/16 v43, -0x1

    .line 381
    .local v43, oldPosition:I
    const/4 v15, -0x1

    .line 382
    .local v15, startPosition:I
    const/4 v13, 0x0

    .line 383
    const/16 v37, 0x0

    .line 384
    .local v37, isPass:Z
    const/16 v36, 0x0

    .line 386
    .local v36, isLastIndex:Z
    move/from16 v34, v33

    :goto_7
    move/from16 v0, v34

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_13

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 389
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v6

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 391
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v50

    move-object/from16 v2, v47

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/discplus/data/DiscPlusData;->access$600(Lcom/android/music/discplus/data/DiscPlusData;ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 399
    if-nez v38, :cond_12

    .line 400
    const/16 v38, 0x1

    .line 401
    move/from16 v43, v27

    .line 402
    move/from16 v15, v34

    .line 447
    :cond_12
    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 448
    move/from16 v10, v34

    .line 449
    .local v10, lStartPosition:I
    const/4 v5, 0x1

    sub-int v5, v30, v5

    add-int v11, v33, v5

    .line 450
    .local v11, endPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_18

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 454
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const/high16 v14, 0x43b4

    move-object v12, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_6

    .line 391
    .end local v10           #lStartPosition:I
    .end local v11           #endPosition:I
    :catchall_5
    move-exception v6

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v6

    .line 393
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 405
    :cond_14
    if-eqz v38, :cond_15

    .line 406
    const/4 v5, -0x1

    move/from16 v0, v43

    move v1, v5

    if-le v0, v1, :cond_15

    const/4 v5, -0x1

    if-le v15, v5, :cond_15

    .line 407
    move v10, v15

    .line 408
    .restart local v10       #lStartPosition:I
    const/4 v5, 0x1

    sub-int v11, v34, v5

    .line 409
    .restart local v11       #endPosition:I
    sub-int v5, v34, v15

    int-to-float v5, v5

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float v31, v5, v6

    .line 410
    .local v31, endDegree:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_17

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 414
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const/high16 v7, 0x43b4

    cmpl-float v7, v31, v7

    if-nez v7, :cond_16

    move/from16 v14, v31

    :goto_8
    move-object v12, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 424
    add-float v13, v13, v31

    .line 425
    const/16 v38, 0x0

    .line 426
    const/16 v43, -0x1

    .line 427
    const/4 v15, -0x1

    .line 429
    const/4 v5, 0x1

    sub-int v5, v30, v5

    move/from16 v0, v34

    move v1, v5

    if-ne v0, v1, :cond_15

    .line 430
    add-int/lit8 v27, v27, 0x1

    .line 431
    const/16 v37, 0x1

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v50

    move-object/from16 v2, v47

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/discplus/data/DiscPlusData;->access$600(Lcom/android/music/discplus/data/DiscPlusData;ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 435
    const/16 v36, 0x1

    .line 441
    .end local v10           #lStartPosition:I
    .end local v11           #endPosition:I
    .end local v31           #endDegree:F
    :cond_15
    if-nez v37, :cond_12

    move/from16 v0, v27

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 442
    add-int/lit8 v27, v27, 0x1

    .line 443
    goto/16 :goto_7

    .line 414
    .restart local v10       #lStartPosition:I
    .restart local v11       #endPosition:I
    .restart local v31       #endDegree:F
    :cond_16
    add-float v7, v13, v31

    move v14, v7

    goto :goto_8

    .line 416
    :catchall_6
    move-exception v6

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v6

    .line 418
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 455
    .end local v31           #endDegree:F
    :catchall_7
    move-exception v6

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v6

    .line 457
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 463
    .end local v10           #lStartPosition:I
    .end local v11           #endPosition:I
    :cond_19
    const/4 v5, 0x1

    sub-int v5, v30, v5

    move/from16 v0, v34

    move v1, v5

    if-ne v0, v1, :cond_26

    .line 464
    if-nez v37, :cond_1e

    const/4 v5, -0x1

    if-eq v15, v5, :cond_1e

    .line 465
    move/from16 v16, v34

    .line 466
    .local v16, lEndPosition:I
    sub-int v5, v34, v15

    if-lez v5, :cond_1a

    sub-int v5, v34, v15

    add-int/lit8 v5, v5, 0x1

    :goto_9
    int-to-float v5, v5

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float v31, v5, v6

    .line 467
    .restart local v31       #endDegree:F
    add-float v19, v13, v31

    .line 468
    .local v19, degree:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_1b

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 472
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/music/discplus/data/DiscPlusListInfo;

    move-object/from16 v17, v8

    move/from16 v18, v13

    invoke-direct/range {v14 .. v19}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 481
    const/high16 v5, 0x43b4

    cmpg-float v5, v19, v5

    if-gez v5, :cond_c

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 483
    if-nez v33, :cond_1c

    const/4 v5, 0x0

    move v11, v5

    .line 485
    .restart local v11       #endPosition:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_1d

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 487
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v20, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const/16 v21, 0x0

    const/high16 v25, 0x43b4

    move/from16 v22, v11

    move-object/from16 v23, v8

    move/from16 v24, v19

    invoke-direct/range {v20 .. v25}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_6

    .line 466
    .end local v11           #endPosition:I
    .end local v19           #degree:F
    .end local v31           #endDegree:F
    :cond_1a
    const/4 v5, 0x1

    goto/16 :goto_9

    .line 473
    .restart local v19       #degree:F
    .restart local v31       #endDegree:F
    :catchall_8
    move-exception v6

    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v6

    .line 475
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 483
    :cond_1c
    const/4 v5, 0x1

    sub-int v5, v33, v5

    move v11, v5

    goto :goto_a

    .line 488
    .restart local v11       #endPosition:I
    :catchall_9
    move-exception v6

    :try_start_12
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    throw v6

    .line 490
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 497
    .end local v11           #endPosition:I
    .end local v16           #lEndPosition:I
    .end local v19           #degree:F
    .end local v31           #endDegree:F
    :cond_1e
    const/high16 v5, 0x43b4

    cmpg-float v5, v13, v5

    if-gez v5, :cond_c

    .line 498
    if-eqz v37, :cond_1f

    const/4 v5, -0x1

    if-ne v15, v5, :cond_1f

    .line 499
    :goto_b
    move/from16 v0, v27

    move/from16 v1, v26

    if-ge v0, v1, :cond_1f

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v50

    move-object/from16 v2, v47

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/discplus/data/DiscPlusData;->access$600(Lcom/android/music/discplus/data/DiscPlusData;ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 502
    const/16 v36, 0x1

    .line 510
    :cond_1f
    if-eqz v36, :cond_20

    .line 511
    move/from16 v10, v34

    .line 512
    .restart local v10       #lStartPosition:I
    move/from16 v16, v34

    .line 513
    .restart local v16       #lEndPosition:I
    if-nez v33, :cond_22

    const/high16 v5, 0x43b4

    move/from16 v31, v5

    .line 514
    .restart local v31       #endDegree:F
    :goto_c
    add-float v19, v13, v31

    .line 515
    .restart local v19       #degree:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_23

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 519
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v20, Lcom/android/music/discplus/data/DiscPlusListInfo;

    move/from16 v21, v10

    move/from16 v22, v16

    move-object/from16 v23, v8

    move/from16 v24, v13

    move/from16 v25, v19

    invoke-direct/range {v20 .. v25}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 527
    move/from16 v13, v19

    .line 528
    const/16 v34, 0x0

    .line 531
    .end local v10           #lStartPosition:I
    .end local v16           #lEndPosition:I
    .end local v19           #degree:F
    .end local v31           #endDegree:F
    :cond_20
    const/high16 v5, 0x43b4

    cmpg-float v5, v13, v5

    if-gez v5, :cond_c

    .line 532
    move/from16 v10, v34

    .line 533
    .restart local v10       #lStartPosition:I
    if-eqz v36, :cond_24

    const/4 v5, 0x1

    sub-int v5, v33, v5

    move v11, v5

    .line 534
    .restart local v11       #endPosition:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_25

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 538
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const/high16 v14, 0x43b4

    move-object v12, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_6

    .line 506
    .end local v10           #lStartPosition:I
    .end local v11           #endPosition:I
    :cond_21
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_b

    .line 513
    .restart local v10       #lStartPosition:I
    .restart local v16       #lEndPosition:I
    :cond_22
    const/high16 v5, 0x3f80

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    move/from16 v31, v5

    goto/16 :goto_c

    .line 520
    .restart local v19       #degree:F
    .restart local v31       #endDegree:F
    :catchall_a
    move-exception v6

    :try_start_15
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    throw v6

    .line 522
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 533
    .end local v16           #lEndPosition:I
    .end local v19           #degree:F
    .end local v31           #endDegree:F
    :cond_24
    const/4 v5, 0x1

    sub-int v5, v30, v5

    add-int v5, v5, v33

    move v11, v5

    goto :goto_d

    .line 539
    .restart local v11       #endPosition:I
    :catchall_b
    move-exception v6

    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    throw v6

    .line 541
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$1;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 553
    .end local v10           #lStartPosition:I
    .end local v11           #endPosition:I
    :cond_26
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_7
.end method
