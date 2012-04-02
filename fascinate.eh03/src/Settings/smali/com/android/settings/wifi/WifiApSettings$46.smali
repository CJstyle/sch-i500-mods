.class Lcom/android/settings/wifi/WifiApSettings$46;
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
    .line 1581
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$46;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$46;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x2

    #setter for: Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$1602(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 1584
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$46;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1585
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$46;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1586
    return-void
.end method
