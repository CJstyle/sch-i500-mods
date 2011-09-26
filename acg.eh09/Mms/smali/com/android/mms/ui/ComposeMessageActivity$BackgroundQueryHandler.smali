.class final Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 6393
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6394
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 6395
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 6507
    sparse-switch p1, :sswitch_data_0

    .line 6523
    :goto_0
    const/16 v0, 0x70a

    if-ne p1, v0, :cond_0

    .line 6524
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6525
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 6526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 6528
    :cond_0
    return-void

    .line 6517
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 6507
    nop

    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 6399
    sparse-switch p1, :sswitch_data_0

    .line 6503
    .end local p2
    :goto_0
    return-void

    .line 6401
    .restart local p2
    :sswitch_0
    const-string v11, "Mms/compose"

    const-string v12, "message list : message list query is completed"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6403
    const/4 v4, -0x1

    .line 6404
    .local v4, newSelectionPos:I
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "select_id"

    const-wide/16 v13, -0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 6405
    .local v5, targetMsgId:J
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "message_type"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6408
    .local v7, targetMsgType:Ljava/lang/String;
    const-wide/16 v11, -0x1

    cmp-long v11, v5, v11

    if-eqz v11, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 6409
    const/4 v11, -0x1

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6410
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6411
    const/4 v11, 0x1

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 6412
    .local v2, msgId:J
    const/4 v11, 0x0

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 6413
    .local v10, type:Ljava/lang/String;
    cmp-long v11, v2, v5

    if-nez v11, :cond_0

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 6414
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 6420
    .end local v2           #msgId:J
    .end local v10           #type:Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6434
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_3

    .line 6436
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v11

    if-lez v11, :cond_2

    .line 6437
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6440
    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 6441
    invoke-static {}, Lcom/android/mms/data/Contact;->clearContactsCache()V

    .line 6442
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto/16 :goto_0

    .line 6447
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 6449
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6455
    :cond_4
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    if-gtz v11, :cond_9

    .line 6456
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 6460
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->isFocusable()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 6461
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-nez v11, :cond_5

    .line 6462
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 6486
    :cond_5
    :goto_1
    const/4 v11, -0x1

    if-eq v4, v11, :cond_6

    .line 6487
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6489
    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    goto/16 :goto_0

    .line 6466
    :cond_7
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_1

    .line 6470
    :cond_8
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 6471
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 6479
    :cond_9
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a

    .line 6480
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 6481
    :cond_a
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-nez v11, :cond_5

    .line 6482
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    .line 6483
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 6494
    .end local v4           #newSelectionPos:I
    .end local v5           #targetMsgId:J
    .end local v7           #targetMsgType:Ljava/lang/String;
    :sswitch_1
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 6495
    .local v8, threadId:J
    new-instance v11, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v11, v8, v9, v12, v13}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-nez v12, :cond_b

    const/4 v12, 0x1

    :goto_2
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_c

    const/4 v13, 0x1

    :goto_3
    iget-object v14, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v11, v12, v13, v14}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    goto :goto_2

    :cond_c
    const/4 v13, 0x0

    goto :goto_3

    .line 6399
    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_1
        0x2537 -> :sswitch_0
    .end sparse-switch
.end method
