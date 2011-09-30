.class Lcom/android/mms/ui/ComposeMessageActivity$39;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$updated:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6713
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->val$updated:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6715
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMA] onUpdate contact updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7200(Ljava/lang/String;)V

    .line 6718
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 6719
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 6720
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-static {v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    .line 6729
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 6732
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6733
    .local v0, list:Lcom/android/mms/data/ContactList;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 6735
    .end local v0           #list:Lcom/android/mms/data/ContactList;
    :cond_1
    return-void

    .line 6722
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    goto :goto_0
.end method
