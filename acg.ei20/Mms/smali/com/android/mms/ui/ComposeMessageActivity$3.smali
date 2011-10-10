.class Lcom/android/mms/ui/ComposeMessageActivity$3;
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
    .line 543
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 547
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 555
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 549
    :pswitch_0
    const-string v1, "mms"

    .line 559
    .local v1, type:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v5, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 560
    .local v0, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v0, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 562
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 552
    .end local v0           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v1           #type:Ljava/lang/String;
    :pswitch_1
    const-string v1, "sms"

    .line 553
    .restart local v1       #type:Ljava/lang/String;
    goto :goto_1

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
