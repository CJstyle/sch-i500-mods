.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1516
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1522
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 1534
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity-D:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1537
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1526
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1530
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1507
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/telephony/ServiceState;)V

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1512
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 1500
    const-string v0, "StatusBarPolicy"

    const-string v1, "onSignalStrengthsChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1503
    return-void
.end method
