.class Lcom/android/settings/SecuritySettings$CredentialStorage$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings$CredentialStorage;->createVzwDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SecuritySettings$CredentialStorage;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings$CredentialStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage$1;->this$1:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 1032
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage$1;->this$1:Lcom/android/settings/SecuritySettings$CredentialStorage;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x2

    #setter for: Lcom/android/settings/SecuritySettings;->userChoice:I
    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings;->access$602(Lcom/android/settings/SecuritySettings;I)I

    .line 1033
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage$1;->this$1:Lcom/android/settings/SecuritySettings$CredentialStorage;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage$1;->this$1:Lcom/android/settings/SecuritySettings$CredentialStorage;

    iget-object v0, v0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mVzw_lbs:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$500(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1035
    return-void
.end method