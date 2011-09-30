.class public final Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteThreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteThreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteThreadActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DeleteThreadActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    .line 137
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 174
    const-string v0, "Mms/DeleteThread"

    const-string v1, "3. Delete message : delete query is Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sparse-switch p1, :sswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 177
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v0}, Lcom/android/mms/ui/DeleteThreadActivity;->access$010(Lcom/android/mms/ui/DeleteThreadActivity;)I

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v0}, Lcom/android/mms/ui/DeleteThreadActivity;->access$000(Lcom/android/mms/ui/DeleteThreadActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sput-boolean v2, Lcom/android/mms/ui/DeleteThreadActivity;->isDeleting:Z

    .line 182
    invoke-static {}, Lcom/android/mms/ui/DeleteThreadActivity;->ensureUpdateDeletable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v0}, Lcom/android/mms/ui/DeleteThreadActivity;->access$100(Lcom/android/mms/ui/DeleteThreadActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable(J)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 196
    :sswitch_1
    sput-boolean v2, Lcom/android/mms/ui/DeleteThreadActivity;->isDeleting:Z

    .line 199
    invoke-static {}, Lcom/android/mms/ui/DeleteThreadActivity;->ensureUpdateDeletable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v0}, Lcom/android/mms/ui/DeleteThreadActivity;->access$100(Lcom/android/mms/ui/DeleteThreadActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListDel;->updateDeletable(J)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_1
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    sparse-switch p1, :sswitch_data_0

    .line 167
    const-string v1, "Mms/DeleteThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete called with unknown token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v1, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 170
    return-void

    .line 144
    :sswitch_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/DeleteThreadActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v1, v1, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/DeleteThreadActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 155
    :sswitch_1
    const/4 v0, 0x0

    .line 157
    .local v0, hasLockedMessages:Z
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 158
    const/4 v0, 0x1

    .line 160
    :cond_1
    new-instance v1, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;-><init>(Lcom/android/mms/ui/DeleteThreadActivity;)V

    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-static {v1, v3, v0, v2}, Lcom/android/mms/ui/DeleteThreadActivity;->confirmDeleteThreadDialog(Lcom/android/mms/ui/DeleteThreadActivity$DeleteThreadListener;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_1
        0x2537 -> :sswitch_0
    .end sparse-switch
.end method
