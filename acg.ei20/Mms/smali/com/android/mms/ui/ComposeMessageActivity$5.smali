.class Lcom/android/mms/ui/ComposeMessageActivity$5;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 995
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    .line 1016
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1017
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "afterTextChanged called with invisible mRecipientsEditor"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v3, "Mms/compose"

    const-string v4, "RecipientsWatcher: afterTextChanged called with invisible mRecipientsEditor"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1027
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1029
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1032
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1036
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, pos:I
    :goto_1
    if-ltz v2, :cond_3

    .line 1037
    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1038
    .local v0, c:C
    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    .line 1036
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1041
    :cond_2
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_3

    .line 1042
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1043
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1048
    .end local v0           #c:C
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/text/Editable;)V

    .line 1050
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1053
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 997
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 1005
    return-void
.end method
