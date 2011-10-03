.class Lcom/android/settings/wifi/WifiApSettings$26;
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
    .line 1230
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1202(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 1235
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2000(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2200(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2300(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 1242
    return-void
.end method
