.class Lcom/android/settings/wifi/WifiApSettings$18;
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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApSettings$18;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const-string v0, "WifiApSettings"

    const-string v1, "BatteryReminderWarningDialog checked "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 956
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 957
    return-void
.end method
