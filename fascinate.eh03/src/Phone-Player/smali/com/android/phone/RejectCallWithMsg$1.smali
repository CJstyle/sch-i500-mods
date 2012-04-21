.class Lcom/android/phone/RejectCallWithMsg$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v6, "RejectCallWithMsg"

    .line 77
    if-nez p3, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsg;->access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v2, v0}, Lcom/android/phone/RejectCallWithMsg;->startActivity(Landroid/content/Intent;)V

    .line 82
    const-string v2, "RejectCallWithMsg"

    const-string v2, "ItemClick - finish pos -0"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 103
    :goto_0
    return-void

    .line 87
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    #setter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/RejectCallWithMsg;->access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsg;->access$200(Lcom/android/phone/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/phone/RejectCallWithMsg;->access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsg;->access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 92
    .local v1, recipients:[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.Send.SMS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "recipient"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v2, "text"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsg;->access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v2, "RejectCallWithMsg"

    const-string v2, "On ItemClick - else"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v2, v0}, Lcom/android/phone/RejectCallWithMsg;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    goto :goto_0
.end method
