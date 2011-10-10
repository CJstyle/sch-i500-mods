.class Lcom/android/mms/ui/ComposeMessageActivity$1;
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
    .line 433
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v3, 0x13

    const-string v6, "maxRecipientCount"

    const-string v5, "existingRecipientCount"

    const-string v4, "additional"

    .line 436
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 437
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 439
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 440
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 445
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, phonebookIntent:Landroid/content/Intent;
    const-string v2, "additional"

    const-string v2, "email-phone-multi"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v2, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v2, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 453
    .end local v1           #phonebookIntent:Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_GROUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, groupIntent:Landroid/content/Intent;
    const-string v2, "additional"

    const-string v2, "group-phone-email"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v2, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const-string v2, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
