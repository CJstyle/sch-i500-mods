.class Lcom/android/server/status/StatusBarService$31;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3737
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$31;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 3743
    const/4 v1, 0x0

    .line 3748
    .local v1, isAirPlaneMode:I
    if-nez v1, :cond_0

    .line 3749
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3751
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 3752
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3753
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 3755
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$31;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    const v3, -0x383839

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3756
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$31;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    const v3, 0x10403da

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3757
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$31;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3758
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 3772
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-void

    .line 3761
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 3763
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$31;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3764
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$31;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    const v3, 0x10403d9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3765
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$31;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mBTBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3766
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
