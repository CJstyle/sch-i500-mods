.class Lcom/android/mms/ui/ConversationList$8;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

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
    .line 882
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 883
    packed-switch p2, :pswitch_data_0

    .line 893
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 885
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedItemId()J

    move-result-wide v0

    .line 886
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 887
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 889
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 883
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
