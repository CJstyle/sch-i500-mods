.class Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;
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

.field final synthetic val$allowedDevMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->val$allowedDevMac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "WifiApManageAllowedDevice"

    .line 226
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$100(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$000(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$200(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$300(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$100(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$400(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 234
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$400(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 235
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$500(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    .line 236
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$600(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-static {v3, v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$702(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 240
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$700(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 242
    .local v1, wifiApState:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$700(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$500(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 246
    const-string v2, "WifiApManageAllowedDevice"

    const-string v2, "mWifiManager.setWifiApEnabled : true"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    new-instance v3, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-direct {v3, v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$802(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    .line 249
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$800(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;->start()V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    const v3, 0x7f0901e0

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->val$allowedDevMac:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 262
    return-void

    .line 252
    .end local v0           #s:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$700(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;->this$0:Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->access$500(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 253
    const-string v2, "WifiApManageAllowedDevice"

    const-string v2, "mWifiManager.setWifiApEnabled : false"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
