.class Lcom/android/music/discplus/data/DiscPlusData$3;
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
    .line 656
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    if-nez v5, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$100(Lcom/android/music/discplus/data/DiscPlusData;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/discplus/data/DiscPlusData;->access$002(Lcom/android/music/discplus/data/DiscPlusData;Lcom/android/music/common/data/MusicDB;)Lcom/android/music/common/data/MusicDB;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    if-nez v5, :cond_0

    .line 746
    :goto_0
    return-void

    .line 665
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 667
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    .line 668
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 677
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 679
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 681
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 684
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    move/from16 v22, v0

    .line 685
    .local v22, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

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

    .line 686
    .local v16, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->access$300(Lcom/android/music/discplus/data/DiscPlusData;Landroid/database/Cursor;)I

    move-result v17

    .line 687
    .local v17, cursorCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->access$400(Lcom/android/music/discplus/data/DiscPlusData;I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_c

    if-lez v17, :cond_c

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    const-string v6, "year_name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 692
    .local v23, yearNameIndex:I
    const/4 v9, 0x0

    .line 693
    .local v9, startDegree:F
    const/16 v20, 0x0

    .line 694
    .local v20, isUnkonwn:Z
    const/4 v11, 0x0

    .line 696
    .local v11, unknownIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    .line 697
    const/16 v21, 0x0

    .line 698
    .local v21, strYear:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v5

    .line 700
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object v0, v7

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 702
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 708
    const/4 v5, 0x1

    sub-int v5, v17, v5

    if-ne v6, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/music/discplus/data/DiscPlusData;->access$800(Lcom/android/music/discplus/data/DiscPlusData;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    .line 709
    .local v19, focusedIndex:Ljava/lang/String;
    :goto_3
    if-eqz v19, :cond_a

    const-string v5, "<unknown>"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 710
    if-nez v20, :cond_6

    const/4 v5, 0x1

    sub-int v5, v17, v5

    if-ne v6, v5, :cond_6

    const/high16 v5, 0x43b4

    move/from16 v18, v5

    .line 711
    .local v18, endDegree:F
    :goto_4
    if-nez v19, :cond_7

    const-string v5, "<unknown>"

    move-object v8, v5

    .line 713
    .local v8, strFocused:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v12, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v12

    .line 715
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v13, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/music/discplus/data/DiscPlusListInfo;

    const/high16 v7, 0x43b4

    cmpl-float v7, v18, v7

    if-nez v7, :cond_8

    move/from16 v10, v18

    :goto_6
    move v7, v6

    invoke-direct/range {v5 .. v10}, Lcom/android/music/discplus/data/DiscPlusListInfo;-><init>(IILjava/lang/String;FF)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 723
    add-float v9, v9, v18

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 696
    .end local v8           #strFocused:Ljava/lang/String;
    .end local v18           #endDegree:F
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 668
    .end local v6           #i:I
    .end local v9           #startDegree:F
    .end local v11           #unknownIndex:I
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v17           #cursorCount:I
    .end local v19           #focusedIndex:Ljava/lang/String;
    .end local v20           #isUnkonwn:Z
    .end local v21           #strYear:Ljava/lang/String;
    .end local v22           #type:I
    .end local v23           #yearNameIndex:I
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 673
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 674
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 675
    monitor-exit v5

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 681
    :catchall_2
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 702
    .restart local v9       #startDegree:F
    .restart local v11       #unknownIndex:I
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v17       #cursorCount:I
    .restart local v20       #isUnkonwn:Z
    .restart local v21       #strYear:Ljava/lang/String;
    .restart local v22       #type:I
    .restart local v23       #yearNameIndex:I
    :catchall_3
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v6

    .line 704
    .restart local v6       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 708
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v21

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/music/discplus/data/DiscPlusData;->access$800(Lcom/android/music/discplus/data/DiscPlusData;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    goto/16 :goto_3

    .line 710
    .restart local v19       #focusedIndex:Ljava/lang/String;
    :cond_6
    const/high16 v5, 0x3f80

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    div-float/2addr v5, v7

    const/high16 v7, 0x43b4

    mul-float/2addr v5, v7

    move/from16 v18, v5

    goto/16 :goto_4

    .restart local v18       #endDegree:F
    :cond_7
    move-object/from16 v8, v19

    .line 711
    goto/16 :goto_5

    .line 715
    .restart local v8       #strFocused:Ljava/lang/String;
    :cond_8
    add-float v7, v9, v18

    move v10, v7

    goto :goto_6

    .line 717
    :catchall_4
    move-exception v5

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v5

    .line 719
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 726
    .end local v8           #strFocused:Ljava/lang/String;
    .end local v18           #endDegree:F
    :cond_a
    const/16 v20, 0x1

    .line 727
    move v11, v6

    goto :goto_7

    .line 731
    .end local v19           #focusedIndex:Ljava/lang/String;
    .end local v21           #strYear:Ljava/lang/String;
    :cond_b
    if-eqz v20, :cond_c

    const/high16 v5, 0x43b4

    cmpg-float v5, v9, v5

    if-gez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v5, :cond_c

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 734
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

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

    .line 735
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$700(Lcom/android/music/discplus/data/DiscPlusData;)V

    .line 745
    .end local v9           #startDegree:F
    .end local v11           #unknownIndex:I
    .end local v20           #isUnkonwn:Z
    .end local v23           #yearNameIndex:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0

    .line 735
    .restart local v9       #startDegree:F
    .restart local v11       #unknownIndex:I
    .restart local v20       #isUnkonwn:Z
    .restart local v23       #yearNameIndex:I
    :catchall_5
    move-exception v6

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v6

    .line 737
    .restart local v6       #i:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData$3;->this$0:Lcom/android/music/discplus/data/DiscPlusData;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->access$500(Lcom/android/music/discplus/data/DiscPlusData;)V

    goto/16 :goto_0
.end method
