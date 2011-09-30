.class Lcom/android/mms/ui/ComposeMessageActivity$12;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V
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
    .line 2473
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f080044

    const v4, 0x7f080043

    .line 2475
    if-nez p2, :cond_2

    .line 2479
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    .line 2480
    .local v2, isMms:Z
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2481
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    .line 2509
    .end local v2           #isMms:Z
    :cond_0
    :goto_0
    return-void

    .line 2483
    .restart local v2       #isMms:Z
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->setFocusChangeRecipients()V

    .line 2484
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    move-object v1, v0

    .line 2487
    .local v1, editor:Lcom/android/mms/ui/RecipientsEditor;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2488
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    .line 2493
    .end local v1           #editor:Lcom/android/mms/ui/RecipientsEditor;
    .end local v2           #isMms:Z
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2494
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AddRecipientButtonEditor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/AddRecipientButtonEditor;->setVisibility(I)V

    .line 2495
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2496
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2497
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2499
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2501
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getRecentButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2502
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getPhoneBookButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2503
    invoke-static {}, Lcom/android/mms/ui/AddRecipientButtonEditor;->getGroupButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2507
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    goto :goto_0
.end method
