.class public Lcom/android/settings/bluetooth/BluetoothRequestService;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothRequestService.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothServiceRequest"

.field private static final V:Z


# instance fields
.field private mInForground:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNotificationMsg:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mInForground:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    const-string v4, "BluetoothServiceRequest"

    .line 74
    const-string v2, "BluetoothServiceRequest"

    const-string v2, "onReceive"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "bt_svc_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, requestedServiceName:Ljava/lang/String;
    const-string v2, "bluetooth_opp_service"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "BluetoothServiceRequest"

    const-string v2, "OPP access request handled by OPP application"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v1           #requestedServiceName:Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    .restart local v1       #requestedServiceName:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f09062b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mNotificationMsg:Ljava/lang/String;

    .line 101
    const-class v2, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    const-string v2, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/high16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    .end local v1           #requestedServiceName:Ljava/lang/String;
    :cond_1
    const-string v2, "BluetoothServiceRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown intent action:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
