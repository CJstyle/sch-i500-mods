.class Lcom/android/settings/wifi/WifiApSettings$18;
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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApSettings$18;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 977
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$800(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 995
    :goto_0
    return-void

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 990
    :cond_2
    const-string v0, "WifiApSettings"

    const-string v1, "Turn Mobile AP on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 992
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 993
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    goto :goto_0
.end method