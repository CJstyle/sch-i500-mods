.class public Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1080080


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v7, -0x8000

    const-string v11, "android.bluetooth.device.extra.PASSKEY"

    const-string v10, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    const-string v8, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 49
    .local v2, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 51
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v6, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 53
    .local v5, type:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v3, pairingIntent:Landroid/content/Intent;
    const-class v6, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v6, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 59
    :cond_0
    const-string v6, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {p2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 60
    .local v4, passkey:I
    const-string v6, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .end local v4           #passkey:I
    :cond_1
    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v3           #pairingIntent:Landroid/content/Intent;
    .end local v5           #type:I
    :cond_2
    return-void
.end method
