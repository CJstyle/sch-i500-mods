.class Lcom/android/settings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v3

    #calls: Lcom/android/settings/bluetooth/BluetoothSettings;->onBluetoothStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothSettings;I)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 153
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$300(Lcom/android/settings/bluetooth/BluetoothSettings;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$302(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z

    .line 155
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/util/WeakHashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 157
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #calls: Lcom/android/settings/bluetooth/BluetoothSettings;->addDevices()V
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$500(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    .line 183
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 186
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 201
    :cond_2
    :goto_1
    return-void

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$600(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$600(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$600(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 173
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_0

    .line 174
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    goto :goto_0

    .line 188
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 190
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, bondState:I
    if-ne v0, v5, :cond_2

    .line 193
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 195
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$700(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #calls: Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$800(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V

    .line 197
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_1
.end method