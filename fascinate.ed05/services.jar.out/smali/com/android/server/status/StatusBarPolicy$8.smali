.class Lcom/android/server/status/StatusBarPolicy$8;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/server/status/StatusBarPolicy;->access$3900(Lcom/android/server/status/StatusBarPolicy;I)V

    .line 1542
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$4000(Lcom/android/server/status/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3600(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1545
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    .line 1557
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3800(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1558
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    .line 1550
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p2}, Lcom/android/server/status/StatusBarPolicy;->access$4100(Lcom/android/server/status/StatusBarPolicy;I)V

    .line 1551
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3800(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1552
    return-void
.end method

.method public onDunDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDunDataActivity:I

    .line 1571
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$4300(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1572
    return-void
.end method

.method public onDunDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDunDataState:I

    .line 1564
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p2}, Lcom/android/server/status/StatusBarPolicy;->access$4200(Lcom/android/server/status/StatusBarPolicy;I)V

    .line 1565
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$4300(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1566
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 1533
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3600(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1534
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/server/status/StatusBarPolicy;->access$3700(Lcom/android/server/status/StatusBarPolicy;Landroid/telephony/ServiceState;)V

    .line 1535
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3800(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1536
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1527
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$8;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3600(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1528
    return-void
.end method
