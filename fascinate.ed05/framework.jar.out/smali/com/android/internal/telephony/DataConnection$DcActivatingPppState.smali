.class Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingPppState"
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

    .line 782
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 783
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 784
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActivatingPppState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method protected exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 799
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 800
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    .line 806
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 808
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 847
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActivatingPppState not handled msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 848
    const/4 v3, 0x0

    .line 851
    .local v3, retVal:Z
    :goto_0
    return v3

    .line 810
    .end local v3           #retVal:Z
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActivatingPppState msg.what=EVENT_DISCONNECT - ignored on ActivatingPpp state"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 811
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/DataConnection;->access$1500(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 812
    const/4 v3, 0x1

    .line 813
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 816
    .end local v3           #retVal:Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActivatingPppState msg.what=EVENT_LINK_STATE_CHANGED"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 818
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 819
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/DataConnection;->onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    move-result-object v2

    .line 821
    .local v2, result:Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    sget-object v4, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 840
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unkown LinkStateResult, should not happen"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 823
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "LINK_UP"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 824
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection$DcActiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 825
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$1700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .line 843
    :goto_1
    const/4 v3, 0x1

    .line 844
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 829
    .end local v3           #retVal:Z
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "LINK_Exited"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 830
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 831
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$1800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 834
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "ERR_BadDns"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 835
    const v4, 0xc3b4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 836
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v5, Lcom/android/internal/telephony/DataConnection;->cid:I

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(ILandroid/os/Message;)V

    .line 837
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$1900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 821
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 2
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActivatingPppState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 788
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 789
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 790
    return-void
.end method
