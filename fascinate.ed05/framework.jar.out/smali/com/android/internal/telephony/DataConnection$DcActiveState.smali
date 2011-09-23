.class Lcom/android/internal/telephony/DataConnection$DcActiveState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 859
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 860
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 861
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActiveState: enter notifyConnectCompleted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 881
    :cond_0
    return-void
.end method

.method protected exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 885
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 886
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 887
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 893
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 925
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState nothandled msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 926
    const/4 v3, 0x0

    .line 929
    .local v3, retVal:Z
    :goto_0
    return v3

    .line 895
    .end local v3           #retVal:Z
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActiveState msg.what=EVENT_DISCONNECT"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 896
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 897
    .local v1, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v4, v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 898
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->onDisconnect()V

    .line 899
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4, v1}, Lcom/android/internal/telephony/DataConnection;->access$2100(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 900
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$2200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .line 901
    const/4 v3, 0x1

    .line 902
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 906
    .end local v1           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v3           #retVal:Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActive State msg.what=EVENT_LINK_STATE_CHANGED"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 908
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 909
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/DataConnection;->onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    move-result-object v2

    .line 911
    .local v2, result:Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    sget-object v4, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 921
    :goto_1
    const/4 v3, 0x1

    .line 922
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 914
    .end local v3           #retVal:Z
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string/jumbo v5, "state error in case of pppd resync of ppplink deactivateDataCall EVENT_FORCE_RETRY"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 915
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 893
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 911
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 2
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActiveState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 865
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 866
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 867
    return-void
.end method
