.class final Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListDel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListDel;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListDel;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    .line 591
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 592
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const-string v3, "Mms/ConversationListDel"

    const-string v2, "3. Delete threads : delete query is ended"

    .line 651
    packed-switch p1, :pswitch_data_0

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 653
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    .line 656
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->ensureUpdateDeletable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable()V

    .line 660
    :cond_1
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->changeConversationListItemDataStyle(Ljava/lang/Boolean;)V

    .line 661
    const-string v0, "Mms/ConversationListDel"

    const-string v0, "3. Delete threads : delete query is ended"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 680
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListDel;->access$302(Z)Z

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDel;->access$710(Lcom/android/mms/ui/ConversationListDel;)I

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDel;->access$700(Lcom/android/mms/ui/ConversationListDel;)I

    move-result v0

    if-nez v0, :cond_0

    .line 686
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    .line 689
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->ensureUpdateDeletable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    invoke-static {}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable()V

    .line 693
    :cond_2
    sget-object v0, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->changeConversationListItemDataStyle(Ljava/lang/Boolean;)V

    .line 694
    const-string v0, "Mms/ConversationListDel"

    const-string v0, "3. Delete threads : delete query is ended"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 703
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 713
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListDel;->access$302(Z)Z

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 596
    sparse-switch p1, :sswitch_data_0

    .line 645
    const-string v0, "Mms/ConversationListDel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 598
    :sswitch_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListDel;->finish()V

    .line 603
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDel;->access$100(Lcom/android/mms/ui/ConversationListDel;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListDel;->access$600(Lcom/android/mms/ui/ConversationListDel;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListDel;->setTitle(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListDel;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0, p3}, Lcom/android/mms/ui/ConversationListDel;->access$500(Lcom/android/mms/ui/ConversationListDel;Landroid/database/Cursor;)V

    goto :goto_1

    .line 609
    :sswitch_1
    if-eqz p3, :cond_0

    .line 610
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 611
    .local v6, deleteAll:Ljava/lang/Boolean;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 612
    .local v7, hasLockedMessages:Ljava/lang/Boolean;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 614
    .local v10, mHasLockMessageThreadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v3, v0, :cond_3

    .line 615
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 616
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 636
    :cond_2
    :goto_2
    new-instance v0, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListDel;->access$200(Lcom/android/mms/ui/ConversationListDel;)Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListDel;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationListDel;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 618
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 624
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 627
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 628
    .local v9, mHasLockMessageThreadId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDel;->access$400(Lcom/android/mms/ui/ConversationListDel;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 630
    goto :goto_2

    .line 624
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #mHasLockMessageThreadId:Ljava/lang/Long;
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 596
    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x70b -> :sswitch_1
    .end sparse-switch
.end method
