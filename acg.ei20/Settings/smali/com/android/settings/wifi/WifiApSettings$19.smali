.class Lcom/android/settings/wifi/WifiApSettings$19;
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

.field final synthetic val$prev_checked:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$19;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApSettings$19;->val$checkBox:Landroid/widget/CheckBox;

    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiApSettings$19;->val$prev_checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$19;->val$checkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings$19;->val$prev_checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 965
    return-void
.end method
