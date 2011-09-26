.class Lcom/android/mms/ui/ConversationListDel$5;
.super Ljava/lang/Object;
.source "ConversationListDel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListDel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListDel;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDel$5;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 476
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 477
    packed-switch p2, :pswitch_data_0

    .line 487
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 479
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListDel$5;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListDel;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    .line 480
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListDel$5;->this$0:Lcom/android/mms/ui/ConversationListDel;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationListDel;->access$200(Lcom/android/mms/ui/ConversationListDel;)Lcom/android/mms/ui/ConversationListDel$ThreadListQueryHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationListDel;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 483
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
