.class Lcom/android/settings/wifi/AccessPointListDialog$8;
.super Ljava/lang/Object;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V
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
    .line 527
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$8;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "whichButton"

    .prologue
    .line 529
    const-string v0, "AccessPointListDialog"

    const-string v1, "mProgressDialog: onClick(), CANCEL clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$8;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$800(Lcom/android/settings/wifi/AccessPointListDialog;)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$8;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$900(Lcom/android/settings/wifi/AccessPointListDialog;)V

    .line 533
    return-void
.end method
