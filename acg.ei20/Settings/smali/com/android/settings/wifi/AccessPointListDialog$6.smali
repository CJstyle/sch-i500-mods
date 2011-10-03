.class Lcom/android/settings/wifi/AccessPointListDialog$6;
.super Ljava/lang/Object;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 388
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$6;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$6;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$200(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 392
    return-void
.end method
