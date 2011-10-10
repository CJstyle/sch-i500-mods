.class final Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 975
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 976
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1076
    packed-switch p1, :pswitch_data_0

    .line 1097
    :goto_0
    return-void

    .line 1079
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1090
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)V

    goto :goto_0

    .line 1076
    :pswitch_data_0
    .packed-switch 0x70a
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "Mms/ConversationList"

    .line 980
    sparse-switch p1, :sswitch_data_0

    .line 1070
    const-string v4, "Mms/ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete called with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    .end local p2
    :goto_0
    return-void

    .line 982
    .restart local p2
    :sswitch_0
    const-string v4, "Mms/ConversationList"

    const-string v4, "speed check : onQueryComplete THREAD_LIST_FAKE_VIEW_QUERY_TOKEN is called"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nemustech/tiffany/widget/TFListView;->setVerticalScrollBarEnabled(Z)V

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, fakeCursorCount:I
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 991
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ConversationList;->setTitle(Ljava/lang/CharSequence;)V

    .line 992
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/ConversationList;->setProgressBarIndeterminateVisibility(Z)V

    .line 996
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 999
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4, v0, v7}, Lcom/android/mms/ui/ConversationList;->access$1500(Lcom/android/mms/ui/ConversationList;IZ)V

    .line 1002
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const-wide/16 v5, 0xc8

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ConversationList;->access$1600(Lcom/android/mms/ui/ConversationList;J)V

    goto :goto_0

    .line 1007
    .end local v0           #fakeCursorCount:I
    :sswitch_1
    const-string v4, "Mms/ConversationList"

    const-string v4, "speed check : onQueryComplete THREAD_LIST_QUERY_TOKEN is called"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/nemustech/tiffany/widget/TFListView;->setVerticalScrollBarEnabled(Z)V

    .line 1012
    const/4 v1, 0x0

    .line 1013
    .local v1, fullCursorCount:I
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1016
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ConversationList;->setTitle(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/ConversationList;->setProgressBarIndeterminateVisibility(Z)V

    .line 1021
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1024
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4, v1}, Lcom/android/mms/ui/ConversationList;->access$1700(Lcom/android/mms/ui/ConversationList;I)V

    .line 1027
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4, v1, v8}, Lcom/android/mms/ui/ConversationList;->access$1500(Lcom/android/mms/ui/ConversationList;IZ)V

    .line 1032
    sget-object v4, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v8, v4, :cond_2

    .line 1033
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    .line 1034
    sget-object v4, Lcom/android/mms/ui/ConversationListDel;->isDeleting:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->changeConversationListItemDataStyle(Ljava/lang/Boolean;)V

    .line 1039
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$1800(Lcom/android/mms/ui/ConversationList;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$1900(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nemustech/tiffany/widget/TFListView;->setSelection(I)V

    .line 1044
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$2200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1045
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4, v7}, Lcom/android/mms/ui/ConversationList;->access$2202(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 1051
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v4

    const/16 v5, 0x70c

    invoke-static {v4, v5}, Lcom/android/mms/data/Conversation;->asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V

    .line 1058
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1040
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$2000(Lcom/android/mms/ui/ConversationList;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$2100(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$2000(Lcom/android/mms/ui/ConversationList;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFListView;->setSelection(I)V

    goto :goto_1

    .line 1062
    .end local v1           #fullCursorCount:I
    :sswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1063
    .local v2, threadId:J
    new-instance v4, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-nez v5, :cond_6

    move v5, v8

    :goto_2
    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_7

    move v6, v8

    :goto_3
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3

    .line 980
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a4 -> :sswitch_0
        0x6a5 -> :sswitch_1
        0x70b -> :sswitch_2
    .end sparse-switch
.end method
