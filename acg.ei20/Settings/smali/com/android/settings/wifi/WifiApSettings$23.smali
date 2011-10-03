.class Lcom/android/settings/wifi/WifiApSettings$23;
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
    .line 1092
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1096
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1602(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 1098
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1202(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 1107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1700(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1700(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1802(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 1112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1158
    :cond_1
    :goto_0
    return-void

    .line 1116
    :cond_2
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turned Wifi off wifiStatus["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1700(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 1121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiApSettings;->access$1900(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 1126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 1141
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1400(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 1149
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiApSettings;->access$1900(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 1150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 1153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$23;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_0
.end method
