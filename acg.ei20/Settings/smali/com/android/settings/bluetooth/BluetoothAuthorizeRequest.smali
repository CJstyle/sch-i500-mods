.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeRequest.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothAuthorizeRequest"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mService:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 60
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    const-string v7, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 61
    const-string v7, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mService:Ljava/lang/String;

    .line 63
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 64
    const v7, 0x7f090640

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 65
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mService:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v7, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 74
    .local v3, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v7, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 76
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v7, "broadcom.android.bluetooth.intent.PAIRING_VARIANT"

    const/high16 v8, -0x100

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 77
    .local v6, type:I
    const-string v7, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, service:Ljava/lang/String;
    const-string v7, "sap_weak_linkkey"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    const-string v7, "BluetoothAuthorizeRequest"

    const-string v8, "Rejecting SAP connection authorization due to weak link key"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v7, v8}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 83
    const v7, 0x7f0906ca

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v1, authIntent:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-virtual {v1, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    const-string v7, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string v7, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v7, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
