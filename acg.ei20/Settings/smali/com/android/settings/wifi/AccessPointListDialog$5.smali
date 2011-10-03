.class Lcom/android/settings/wifi/AccessPointListDialog$5;
.super Ljava/lang/Object;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointListDialog;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointListDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$5;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$5;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$200(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 398
    return-void
.end method
