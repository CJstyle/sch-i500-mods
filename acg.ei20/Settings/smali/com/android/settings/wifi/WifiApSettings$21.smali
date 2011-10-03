.class Lcom/android/settings/wifi/WifiApSettings$21;
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
    .line 1061
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v2, 0xa

    .line 1063
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1065
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 1073
    :goto_0
    return-void

    .line 1068
    :cond_0
    const-string v0, "WifiApSettings"

    const-string v1, "Turn Mobile AP on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$21;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    goto :goto_0
.end method
