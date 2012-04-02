.class Lcom/android/settings/wifi/WifiApSettings$44;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1548
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #setter for: Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1602(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 1549
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1550
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    const-string v0, "WifiApSettings"

    const-string v1, "DIALOG_CONFIGURE_SWITCH_AUTOMATIC : confirmWifiAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1553
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 1561
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x3

    #calls: Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1900(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 1562
    return-void

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1556
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #calls: Lcom/android/settings/wifi/WifiApSettings;->displayConfigureFinishedToast()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1400(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 1557
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #calls: Lcom/android/settings/wifi/WifiApSettings;->updateConnectedDevices()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 1558
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    #setter for: Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1502(Lcom/android/settings/wifi/WifiApSettings;Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 1559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$44;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;->start()V

    goto :goto_0
.end method
