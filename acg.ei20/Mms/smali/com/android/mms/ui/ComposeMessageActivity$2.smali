.class Lcom/android/mms/ui/ComposeMessageActivity$2;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


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
    .line 476
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 479
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 481
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 492
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage;Z)V

    goto :goto_0

    .line 499
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->isCallInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0901d6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage;Z)V

    goto :goto_0

    .line 510
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage;Z)V

    goto :goto_0

    .line 518
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 525
    :pswitch_6
    const/4 v6, 0x0

    .line 526
    .local v6, result:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;ILandroid/net/Uri;ZZ)I

    move-result v6

    .line 527
    if-nez v6, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentEditor;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
