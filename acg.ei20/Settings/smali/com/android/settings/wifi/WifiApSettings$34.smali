.class Lcom/android/settings/wifi/WifiApSettings$34;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1335
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->saveConfiguration()V

    .line 1340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1343
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1400(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 1346
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1502(Lcom/android/settings/wifi/WifiApSettings;Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 1347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;->start()V

    .line 1363
    :goto_0
    return-void

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1351
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    goto :goto_0
.end method
