.class Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingBadDnsState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 941
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 973
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcDisconnectingBadDnsState not handled msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 974
    const/4 v3, 0x0

    .line 977
    .local v3, retVal:Z
    :goto_0
    return v3

    .line 943
    .end local v3           #retVal:Z
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne v4, v5, :cond_0

    .line 944
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcDisconnectingBadDnsState msg.what=EVENT_DISCONNECT - ignored on DisconnectingBadDnsState state"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 953
    :goto_1
    const/4 v3, 0x1

    .line 954
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 946
    .end local v3           #retVal:Z
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcDisconnectingBadDnsState msg.what=EVENT_DISCONNECT"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 947
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 948
    .local v2, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 949
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->onDisconnect()V

    .line 950
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 951
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$2200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 957
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 958
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 959
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget v4, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v5, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-ne v4, v5, :cond_1

    .line 960
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcDisconnectingBadDnsState msg.what=EVENT_DEACTIVATE_DONE"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 963
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 964
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .line 969
    :goto_2
    const/4 v3, 0x1

    .line 970
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 966
    .end local v3           #retVal:Z
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcDisconnectingBadDnsState EVENT_DEACTIVE_DONE stale dp.tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
