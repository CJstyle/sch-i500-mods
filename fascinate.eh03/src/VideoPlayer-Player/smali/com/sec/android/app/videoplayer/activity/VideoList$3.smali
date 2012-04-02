.class Lcom/sec/android/app/videoplayer/activity/VideoList$3;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->setTouchListenr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "view"
    .parameter "event"

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/database/Cursor;

    move-result-object v5

    .line 579
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_0

    .line 580
    const/16 v20, 0x0

    .line 750
    :goto_0
    return v20

    .line 582
    :cond_0
    const/4 v7, 0x0

    .line 583
    .local v7, iCurListTotalCnt:I
    const/4 v8, 0x0

    .line 585
    .local v8, iFileTotalCnt:I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 586
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 588
    const-string v20, "VideoList"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setTouchListenr - cursor count : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-gtz v7, :cond_1

    .line 591
    const/16 v20, 0x0

    goto :goto_0

    .line 593
    :cond_1
    if-nez p1, :cond_2

    .line 594
    const/16 v20, 0x0

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 597
    .local v18, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 598
    .local v19, y:I
    const/4 v14, -0x1

    .line 600
    .local v14, position:I
    const/4 v4, 0x0

    .line 601
    .local v4, checkbox:Landroid/widget/CheckBox;
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v13, v0

    .line 602
    .local v13, listview:Landroid/widget/ListView;
    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v20

    invoke-virtual {v13}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v21

    sub-int v14, v20, v21

    .line 603
    if-ltz v14, :cond_6

    invoke-virtual {v13}, Landroid/widget/ListView;->getChildCount()I

    move-result v20

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->getCheckBox(Landroid/view/View;)Landroid/view/View;
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1200(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .end local v4           #checkbox:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .line 611
    .restart local v4       #checkbox:Landroid/widget/CheckBox;
    if-eqz v4, :cond_3

    .line 613
    invoke-virtual {v4}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 615
    .local v9, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v3

    .line 616
    .local v3, adapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v12

    .line 618
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->checkIdExist_SelectedIdList(J)Z

    move-result v20

    if-nez v20, :cond_9

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 701
    .end local v3           #adapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    .end local v9           #id:J
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    :goto_1
    if-eqz v14, :cond_e

    .line 703
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v12

    .line 705
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 706
    .local v15, removeListCnt:I
    const/4 v11, 0x0

    .line 708
    .local v11, isSelectAllexist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->isSelectAllExist(Ljava/util/ArrayList;)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1700(Lcom/sec/android/app/videoplayer/activity/VideoList;Ljava/util/ArrayList;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 709
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    sub-int v15, v20, v21

    .line 710
    const/4 v11, 0x1

    .line 716
    :goto_2
    const-string v20, "VideoList"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Remove List size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v20, "VideoList"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Total file count : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-ne v15, v8, :cond_5

    .line 721
    if-nez v11, :cond_4

    .line 722
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->getSelectAllCheckView()Landroid/widget/CheckBox;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1800(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 726
    if-eqz v4, :cond_5

    .line 728
    const/16 v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 729
    invoke-virtual {v4}, Landroid/widget/CheckBox;->invalidate()V

    .line 733
    :cond_5
    if-lez v15, :cond_d

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1900(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 750
    .end local v11           #isSelectAllexist:Z
    .end local v15           #removeListCnt:I
    :goto_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 609
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 623
    .restart local v3       #adapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    .restart local v9       #id:J
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :pswitch_0
    const/16 v20, 0x0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1302(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1402(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1300(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->invalidate()V

    goto/16 :goto_1

    .line 630
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1400(Lcom/sec/android/app/videoplayer/activity/VideoList;)I

    move-result v20

    move/from16 v0, v20

    move v1, v14

    if-ne v0, v1, :cond_3

    .line 632
    const/16 v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 634
    const-wide/16 v20, 0x0

    cmp-long v20, v9, v20

    if-nez v20, :cond_8

    .line 636
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 637
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v7, :cond_7

    .line 641
    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 642
    .local v16, videoId:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 639
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 645
    .end local v16           #videoId:J
    :cond_7
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetInvalidated()V

    .line 652
    .end local v6           #i:I
    :goto_5
    const/16 v20, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1302(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1402(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    goto/16 :goto_1

    .line 649
    :cond_8
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {v4}, Landroid/widget/CheckBox;->invalidate()V

    goto :goto_5

    .line 661
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_1

    .line 664
    :pswitch_2
    const/16 v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1302(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1402(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1300(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->invalidate()V

    goto/16 :goto_1

    .line 671
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1400(Lcom/sec/android/app/videoplayer/activity/VideoList;)I

    move-result v20

    move/from16 v0, v20

    move v1, v14

    if-ne v0, v1, :cond_3

    .line 673
    const/16 v20, 0x0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 674
    const-wide/16 v20, 0x0

    cmp-long v20, v9, v20

    if-nez v20, :cond_a

    .line 676
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetInvalidated()V

    .line 689
    :goto_6
    const/16 v20, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1302(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1402(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    goto/16 :goto_1

    .line 681
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mSelectAllView:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1500(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->setSelectAllUnCheckView()V
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1600(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    .line 684
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->deleteId_SelectedIdList(J)V

    .line 686
    :cond_b
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->deleteId_SelectedIdList(J)V

    .line 687
    invoke-virtual {v4}, Landroid/widget/CheckBox;->invalidate()V

    goto :goto_6

    .line 713
    .end local v3           #adapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    .end local v9           #id:J
    .restart local v11       #isSelectAllexist:Z
    .restart local v15       #removeListCnt:I
    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto/16 :goto_2

    .line 736
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1900(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 740
    .end local v11           #isSelectAllexist:Z
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #removeListCnt:I
    :cond_e
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v12

    .line 741
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v20, "VideoList"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Remove List size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_f

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1900(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 746
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/VideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1900(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 661
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
