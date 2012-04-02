.class Lcom/android/music/discplus/data/DiscPlusData$2;
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
    .line 569
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    if-nez v5, :cond_0

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$100(Lcom/android/music/discplus/data/DiscPlusData;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$002(Lcom/android/music/discplus/data/DiscPlusData;Lcom/android/music/common/data/MusicDB;)Lcom/android/music/common/data/MusicDB;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    if-nez v5, :cond_0

    .line 659
    :goto_0
    return-void

    .line 579
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 581
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    .line 582
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 591
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 593
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 595
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 598
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    move/from16 v22, v0

    .line 599
    .local v22, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 600
    .local v16, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->access$300(Lcom/android/music/discplus/data/DiscPlusData;Landroid/database/Cursor;)I

    move-result v17

    .line 601
    .local v17, cursorCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->access$400(Lcom/android/music/discplus/data/DiscPlusData;I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_b

    if-lez v17, :cond_b

    .line 605
    invoke-static/range {v22 .. v22}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v21

    .line 606
    .local v21, nameIndex:I
    const/4 v9, 0x0

    .line 607
    .local v9, startDegree:F
    const/16 v20, 0x0

    .line 608
    .local v20, isUnkonwn:Z
    const/4 v11, 0x0

    .line 610
    .local v11, unknownIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 611
    const/16 v19, 0x0

    .line 612
    .local v19, focusedIndex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 614
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 616
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 622
    if-eqz v19, :cond_9

    const-string v5, "<unknown>"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 623
    if-nez v20, :cond_5

    const/4 v5, 0x1

    sub-int v5, v17, v5

    if-ne v6, v5, :cond_5

    const/high16 v5, 0x43b4

    move/from16 v18, v5

    .line 624
    .local v18, endDegree:F
    :goto_3
    if-nez v19, :cond_6

    const-string v5, "<unknown>"

    move-object v8, v5

    .line 626
    .local v8, strFocused:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v12, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v12

    .line 628
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v13, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const/high16 v7, 0x43b4

    cmpl-float v7, v18, v7

    if-nez v7, :cond_7

    move/from16 v10, v18

    :goto_5
    move v7, v6

    invoke-direct/range {v5 .. v10}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 636
    add-float v9, v9, v18

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 610
    .end local v8           #strFocused:Ljava/lang/String;
    .end local v18           #endDegree:F
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 582
    .end local v6           #i:I
    .end local v9           #startDegree:F
    .end local v11           #unknownIndex:I
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v17           #cursorCount:I
    .end local v19           #focusedIndex:Ljava/lang/String;
    .end local v20           #isUnkonwn:Z
    .end local v21           #nameIndex:I
    .end local v22           #type:I
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 587
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 588
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 589
    monitor-exit v5

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 595
    :catchall_2
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 616
    .restart local v9       #startDegree:F
    .restart local v11       #unknownIndex:I
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v17       #cursorCount:I
    .restart local v19       #focusedIndex:Ljava/lang/String;
    .restart local v20       #isUnkonwn:Z
    .restart local v21       #nameIndex:I
    .restart local v22       #type:I
    :catchall_3
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v6

    .line 618
    .restart local v6       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 623
    :cond_5
    const/high16 v5, 0x3f80

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    div-float/2addr v5, v7

    const/high16 v7, 0x43b4

    mul-float/2addr v5, v7

    move/from16 v18, v5

    goto :goto_3

    .restart local v18       #endDegree:F
    :cond_6
    move-object/from16 v8, v19

    .line 624
    goto :goto_4

    .line 628
    .restart local v8       #strFocused:Ljava/lang/String;
    :cond_7
    add-float v7, v9, v18

    move v10, v7

    goto :goto_5

    .line 630
    :catchall_4
    move-exception v5

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v5

    .line 632
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 639
    .end local v8           #strFocused:Ljava/lang/String;
    .end local v18           #endDegree:F
    :cond_9
    const/16 v20, 0x1

    .line 640
    move v11, v6

    goto :goto_6

    .line 644
    .end local v19           #focusedIndex:Ljava/lang/String;
    :cond_a
    if-eqz v20, :cond_b

    const/high16 v5, 0x43b4

    cmpg-float v5, v9, v5

    if-gez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v5, :cond_b

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 647
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    .end local v6           #i:I
    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const-string v13, "<unknown>"

    const/high16 v15, 0x43b4

    move v12, v11

    move v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 658
    .end local v9           #startDegree:F
    .end local v11           #unknownIndex:I
    .end local v20           #isUnkonwn:Z
    .end local v21           #nameIndex:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 648
    .restart local v9       #startDegree:F
    .restart local v11       #unknownIndex:I
    .restart local v20       #isUnkonwn:Z
    .restart local v21       #nameIndex:I
    :catchall_5
    move-exception v6

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v6

    .line 650
    .restart local v6       #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$2;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0
.end method
