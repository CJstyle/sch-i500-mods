.class Lcom/sec/android/app/carcradle/CarCradleMain$2;
.super Ljava/lang/Object;
.source "CarCradleMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/carcradle/CarCradleMain;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/carcradle/CarCradleMain;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    iput-object p2, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    const-string v1, "always_show_disclaimer"

    iget-object v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$000(Lcom/sec/android/app/carcradle/CarCradleMain;Ljava/lang/String;Z)V

    .line 231
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 232
    return-void
.end method
