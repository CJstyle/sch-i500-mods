.class Lcom/android/settings/wifi/WifiApSettings$25;
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
    .line 1184
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xb

    const-string v4, "WifiApSettings"

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1188
    const-string v0, "WifiApSettings"

    const-string v0, "Turn Mobile AP on"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiApSettings;->access$1202(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 1196
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1700(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1700(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1228
    :goto_0
    return-void

    .line 1210
    :cond_1
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Turned Wifi off wifiStatus["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1700(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    goto :goto_0

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$25;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1400(Lcom/android/settings/wifi/WifiApSettings;)V

    goto :goto_0
.end method
