.class Lcom/android/settings/wifi/WifiApSettings$4;
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
    .line 644
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 647
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #setter for: Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiApSettings;->access$1102(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 648
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 650
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const v2, 0x7f0901ed

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 653
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #setter for: Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiApSettings;->access$1202(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 656
    return-void
.end method
