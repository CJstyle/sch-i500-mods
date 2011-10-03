.class Lcom/android/settings/wifi/WifiApSettings$48;
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
    .line 1622
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1624
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1602(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 1625
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1626
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    const-string v0, "WifiApSettings"

    const-string v1, "DIALOG_CONFIGURE_SWITCH_AUTOMATIC : confirmWifiAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1629
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 1637
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1900(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 1638
    return-void

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1632
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1400(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 1633
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 1634
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1502(Lcom/android/settings/wifi/WifiApSettings;Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 1635
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$48;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;->start()V

    goto :goto_0
.end method
