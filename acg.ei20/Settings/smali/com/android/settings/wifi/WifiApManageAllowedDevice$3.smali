.class Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;
.super Ljava/lang/Object;
.source "WifiApManageAllowedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApManageAllowedDevice;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const-string v11, ""

    .line 281
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$900(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, mac:Ljava/lang/String;
    const/4 v2, 0x0

    .line 286
    .local v2, replace_mac:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-virtual {v4, v10}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->dismissDialog(I)V

    .line 288
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-virtual {v4, v8}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->showDialog(I)V

    .line 333
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$1000(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 293
    const-string v4, "-"

    const-string v5, ":"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    new-instance v0, Lcom/android/settings/wifi/WifiApAllowedDevice;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-direct {v0, v4, v2}, Lcom/android/settings/wifi/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    .local v0, device:Lcom/android/settings/wifi/WifiApAllowedDevice;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$100(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 300
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$200(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    .line 301
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$300(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    .line 304
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$400(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$400(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 306
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$500(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-boolean v7, v4, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    .line 307
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$600(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    .line 310
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-static {v5, v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$702(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 311
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$700(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 313
    .local v3, wifiApState:I
    if-eq v3, v10, :cond_2

    if-ne v3, v8, :cond_3

    .line 316
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$700(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$500(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 317
    const-string v4, "WifiApManageAllowedDevice"

    const-string v5, "mWifiManager.setWifiApEnabled : true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    new-instance v5, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-direct {v5, v6}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$802(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    .line 320
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$800(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;->start()V

    .line 329
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$900(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 324
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$700(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$500(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 325
    const-string v4, "WifiApManageAllowedDevice"

    const-string v5, "mWifiManager.setWifiApEnabled : false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 330
    .end local v0           #device:Lcom/android/settings/wifi/WifiApAllowedDevice;
    .end local v3           #wifiApState:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-virtual {v4, v8}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->showDialog(I)V

    goto/16 :goto_0
.end method
