.class Lcom/android/mms/ui/ComposeMessageActivity$7;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 19
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1385
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v7, v0

    .line 1386
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v15

    move-object v0, v7

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 1389
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-gtz v15, :cond_1

    .line 1390
    :cond_0
    const-string v15, "Mms/compose"

    const-string v16, "onCreateContextMenu Bad cursor."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :goto_0
    return-void

    .line 1393
    :cond_1
    const/4 v15, 0x0

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1394
    .local v14, type:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1395
    .local v10, msgId:J
    const/4 v13, 0x0

    .line 1397
    .local v13, slideshow:Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    sget-object v16, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-wide v1, v10

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1405
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v15, v14, v10, v11, v5}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v12

    .line 1408
    .local v12, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v12, :cond_2

    .line 1409
    const-string v15, "Mms/compose"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot load message item for type = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", msgId = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1400
    .end local v12           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 1402
    .local v6, e1:Lcom/google/android/mms/MmsException;
    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1

    .line 1414
    .end local v6           #e1:Lcom/google/android/mms/MmsException;
    .restart local v12       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_2
    const v15, 0x7f090030

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1416
    new-instance v8, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    .line 1418
    .local v8, l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 1419
    const/4 v15, 0x0

    const/16 v16, 0x12

    const/16 v17, 0x0

    const v18, 0x7f0900d8

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1421
    const/4 v15, 0x0

    const/16 v16, 0x15

    const/16 v17, 0x0

    const v18, 0x7f090022

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1423
    const/4 v15, 0x0

    const/16 v16, 0x18

    const/16 v17, 0x0

    const v18, 0x7f09002a

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1429
    :cond_3
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1430
    const/4 v15, 0x0

    const/16 v16, 0x19

    const/16 v17, 0x0

    const v18, 0x7f0900d4

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1434
    :cond_4
    const/4 v15, 0x0

    const/16 v16, 0x12

    const/16 v17, 0x0

    const v18, 0x7f0900d8

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 1439
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1440
    const/4 v15, 0x0

    const/16 v16, 0x18

    const/16 v17, 0x0

    const v18, 0x7f09002a

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1444
    :cond_5
    iget-boolean v15, v12, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v15, :cond_b

    .line 1445
    const/4 v15, 0x0

    const/16 v16, 0x1d

    const/16 v17, 0x0

    const v18, 0x7f0900dc

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1455
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->size()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1456
    const/4 v15, 0x0

    const/16 v16, 0xe

    const/16 v17, 0x0

    const v18, 0x7f0900d3

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1480
    :cond_6
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1482
    iget-object v15, v12, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v15, :cond_d

    .line 1483
    if-eqz v13, :cond_7

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    invoke-static {v15, v13, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/SlideshowModel;J)I

    move-result v9

    .line 1485
    .local v9, mGetAttachmentsCount:I
    const/4 v15, 0x2

    if-ge v9, v15, :cond_c

    .line 1487
    const/4 v15, 0x0

    const/16 v16, 0x2d

    const/16 v17, 0x0

    const v18, 0x7f09018d

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1516
    .end local v9           #mGetAttachmentsCount:I
    :cond_7
    :goto_3
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 1517
    const/4 v15, 0x0

    const/16 v16, 0x15

    const/16 v17, 0x0

    const v18, 0x7f090022

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1523
    :cond_8
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1526
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-static {v12}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v15

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 1528
    :cond_9
    const/4 v15, 0x0

    const/16 v16, 0x1f

    const/16 v17, 0x0

    const v18, 0x7f09002b

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1534
    :cond_a
    const/4 v15, 0x0

    const/16 v16, 0x11

    const/16 v17, 0x0

    const v18, 0x7f090018

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1448
    :cond_b
    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/16 v17, 0x0

    const v18, 0x7f0900db

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1491
    .restart local v9       #mGetAttachmentsCount:I
    :cond_c
    const/4 v15, 0x0

    const/16 v16, 0x23

    const/16 v17, 0x0

    const v18, 0x7f09018c

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1499
    .end local v9           #mGetAttachmentsCount:I
    :cond_d
    if-eqz v13, :cond_7

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$7;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v15, v0

    invoke-static {v15, v13, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/SlideshowModel;J)I

    move-result v9

    .line 1501
    .restart local v9       #mGetAttachmentsCount:I
    const/4 v15, 0x2

    if-ge v9, v15, :cond_e

    .line 1503
    const/4 v15, 0x0

    const/16 v16, 0x2d

    const/16 v17, 0x0

    const v18, 0x7f09018d

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1507
    :cond_e
    const/4 v15, 0x0

    const/16 v16, 0x23

    const/16 v17, 0x0

    const v18, 0x7f09018c

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method
